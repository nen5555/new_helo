#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <thread>
#include <iostream>
#include <filesystem>
#include <cstdio>
#include <array>

namespace fs = std::filesystem;

// Function to generate image and stream it via RTSP
void generateAndStreamImage(const std::string& streamUrl, const cv::Scalar& color) {
    // Create an image with the specified color, size 400x400 pixels
    cv::Mat image(400, 400, CV_8UC3, color);
    
    if (image.empty()) {
        std::cerr << "Failed to create image!" << std::endl;
        return;
    }
    
    // Prepare FFmpeg command for streaming
    std::string ffmpegCmd = "ffmpeg -re -f rawvideo -pix_fmt bgr24 -s 400x400 "
                            "-i pipe:0 -c:v libx264 -preset ultrafast -f rtsp " + streamUrl;
    
    FILE* ffmpegPipe = popen(ffmpegCmd.c_str(), "w");
    if (!ffmpegPipe) {
        std::cerr << "Failed to open pipe to FFmpeg!" << std::endl;
        return;
    }
    
    // Stream the image for 10 seconds
    for (int i = 0; i < 300; ++i) {  // 30 fps * 10 seconds
        fwrite(image.data, 1, image.total() * image.elemSize(), ffmpegPipe);
        fflush(ffmpegPipe);
        std::this_thread::sleep_for(std::chrono::milliseconds(33));  // ~30 fps
    }
    
    pclose(ffmpegPipe);
    
    std::cout << "Finished streaming " << streamUrl << std::endl;
}

int main() {
    // Use the WSL2 IP address here
    std::string wslIp = "127.0.0.1";  // Replace with your actual WSL2 IP
    std::string baseUrl = "rtsp://" + wslIp + ":9554/live";
    // Start a thread to generate and stream image with grey color
    std::thread threadGray(generateAndStreamImage, baseUrl + "white", cv::Scalar(127, 127, 127));
    
    // Wait for the thread to complete
    threadGray.join();
    
    return 0;
}
