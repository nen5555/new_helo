from flask import Flask, request, jsonify, send_from_directory, url_for
import os
import subprocess

app = Flask(__name__)

@app.route('/')
def index():
    return send_from_directory('.', 'index.html')

@app.route('/sort', methods=['POST'])
def sort():
    data = request.get_json()
    algorithm = data.get('algorithm')

    if algorithm not in ['select', 'bubble', 'insert']:
        return jsonify({'message': 'Invalid algorithm'}), 400

    try:
        # 调用编译好的 C++ 程序
        result = subprocess.run(['./build/sort_algrm', algorithm], capture_output=True, text=True)
        if result.returncode != 0:
            return jsonify({'message': 'Error executing sort algorithm'}), 500

        gif_filename = f'{algorithm}_output.gif'
        gif_path = f'images/{gif_filename}'
        return jsonify({'message': 'Sort completed successfully', 'gif_path': url_for('static_files', filename=gif_filename)})
    except Exception as e:
        return jsonify({'message': str(e)}), 500

@app.route('/images/<path:filename>')
def static_files(filename):
    return send_from_directory('build/images', filename)

if __name__ == '__main__':
    app.run(debug=True)
