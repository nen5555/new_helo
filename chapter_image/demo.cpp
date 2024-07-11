#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <thread>  // 引入多线程支持
#include <iostream>

// 函数定义：生成并保存指定颜色的图片
void generateAndSaveImage(const std::string& filename, const cv::Scalar& color) {
    // 创建一个指定颜色的图像，大小为 400x400 像素
    cv::Mat image(400, 400, CV_8UC3, color);

    // 检查图像是否成功创建
    if (image.empty()) {
        std::cerr << "Failed to create image!" << std::endl;
        return;
    }

    // 将图像保存为PNG文件
    if (!cv::imwrite(filename, image)) {
        std::cerr << "Failed to save image: " << filename << std::endl;
        return;
    }
    std::cout << "Image saved as: " << filename << std::endl;
}

int main() {
    // 启动三个线程分别生成和保存不同颜色的图片
    std::thread threadBlack(generateAndSaveImage, "BlackImage.png", cv::Scalar(0, 0, 0));
    std::thread threadWhite(generateAndSaveImage, "WhiteImage.png", cv::Scalar(255, 255, 255));
    std::thread threadGray(generateAndSaveImage, "GrayImage.png", cv::Scalar(127, 127, 127));

    // 等待所有线程执行完成
    threadBlack.join();
    threadWhite.join();
    threadGray.join();

    return 0;
}
