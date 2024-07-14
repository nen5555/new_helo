#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <thread>
#include <iostream>
#include <filesystem>
#include <cstdio>
#include <array>

namespace fs = std::filesystem;

void streamColor(const std::string& streamUrl, const std::vector<cv::Scalar>& colors, int duration) {
    std::string ffmpegCmd = "ffmpeg -re -f rawvideo -pix_fmt bgr24 -s 400x400 "
                            "-i pipe:0 -c:v libx264 -preset ultrafast -f rtsp " + streamUrl;
    
    FILE* ffmpegPipe = popen(ffmpegCmd.c_str(), "w");
    if (!ffmpegPipe) {
        std::cerr << "Failed to open pipe to FFmpeg!" << std::endl;
        return;
    }

    int colorIndex = 0;
    int numColors = colors.size();
    for (int i = 0; i < duration * 30; ++i) {  // 30 fps * duration seconds
        cv::Mat image(400, 400, CV_8UC3, colors[colorIndex]);
        fwrite(image.data, 1, image.total() * image.elemSize(), ffmpegPipe);
        fflush(ffmpegPipe);

        colorIndex = (colorIndex + 1) % numColors;
        std::this_thread::sleep_for(std::chrono::milliseconds(33));  // ~30 fps
    }

    pclose(ffmpegPipe);
    std::cout << "Finished streaming " << streamUrl << std::endl;
}

void generateAndStreamImages(const std::string& baseUrl) {
    std::vector<cv::Scalar> colors = {cv::Scalar(0, 0, 0), cv::Scalar(127, 127, 127), cv::Scalar(255, 255, 255)};
    int duration = 10;  // Stream duration in seconds

    std::thread streamThread1(streamColor, baseUrl + "white", colors, duration);

    streamThread1.join();
}

int main() {
    std::string wslIp = "127.0.0.1";  // Replace with your actual WSL2 IP
    std::string baseUrl = "rtsp://" + wslIp + ":9554/live/";
    std::cout<<baseUrl+"white"<<std::endl;

    generateAndStreamImages(baseUrl);

    return 0;
}
