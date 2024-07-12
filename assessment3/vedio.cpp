#include <opencv2/opencv.hpp>
#include <iostream>

int main(int argc, char** argv)
{
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << "1.webm" << std::endl;
        return -1;
    }

    // 打开视频文件
    cv::VideoCapture cap(argv[1]);
    if (!cap.isOpened()) {
        std::cerr << "Error: Could not open video file." << std::endl;
        return -1;
    }

    cv::Mat frame;
    while (true) {
        // 读取下一帧
        cap >> frame;

        // 如果帧为空，退出循环
        if (frame.empty()) break;

        // 显示帧
        cv::imshow("Video", frame);

        // 等待25ms，按键退出
        if (cv::waitKey(25) >= 0) break;
    }

    return 0;
}
