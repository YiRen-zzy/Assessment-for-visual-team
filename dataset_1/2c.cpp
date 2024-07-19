#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>
#include <sstream>
using namespace std;
using namespace cv;
void processImage(const string& imgPath, double scale, const string& interpolation, int dx, int dy, const string& rotationCenter, double angle) {
    Mat image = imread(imgPath);
    if (image.empty()) {
        cerr << "Could not open or find the image " << imgPath << endl;
        return;
    }

    // Scale the image
    Mat scaledImage;
    int interpolationMethod = interpolation == "NEAREST" ? INTER_NEAREST : INTER_LINEAR;
    resize(image, scaledImage, cv::Size(), scale, scale, interpolationMethod);

    // Translate the image
    Mat translatedImage;
    Mat translationMatrix = (Mat_<double>(2, 3) << 1, 0, dx, 0, 1, dy);
    warpAffine(scaledImage, translatedImage, translationMatrix, scaledImage.size());

    // Get the rotation matrix for rotating and scaling the image around its center
    Point2f center = (rotationCenter == "center") ? Point2f(translatedImage.cols / 2.0, translatedImage.rows / 2.0) : Point2f(0, 0);
    Mat rotationMatrix = getRotationMatrix2D(center, angle, 1.0);

    // Compute the bounding box of the rotated image
    Rect bbox = RotatedRect(center, translatedImage.size(), angle).boundingRect();

    // Adjust the rotation matrix to take into account the translation to the center of the bounding box
    rotationMatrix.at<double>(0, 2) += bbox.width / 2.0 - center.x;
    rotationMatrix.at<double>(1, 2) += bbox.height / 2.0 - center.y;

    // Perform the affine transformation (rotation)
    Mat rotatedImage;
    warpAffine(translatedImage, rotatedImage, rotationMatrix, bbox.size(), interpolationMethod, cv::BORDER_CONSTANT, cv::Scalar(255, 255, 255));

    // Mask to remove black borders
    Mat mask;
    cvtColor(rotatedImage, mask, COLOR_BGR2GRAY);
    threshold(mask, mask, 254, 255, THRESH_BINARY);
    rotatedImage.setTo(Scalar(255, 255, 255), mask);

    // Save the processed image
    string outputPath = "processed_" + imgPath;
    imwrite(outputPath, rotatedImage);
}

int main() {
    ifstream file("experiment1.csv");
    string line;

    // Skip the header line
    getline(file, line);

    while (getline(file, line)) {
        stringstream s(line);
        string imgName, interpolation, rotationCenter;
        double imgScale;
        int imgHorizontal, imgVertical;
        double rotationAngle;

        // Use ',' as a delimiter to extract values correctly
        getline(s, imgName, ',');
        s >> imgScale;
        s.ignore();
        getline(s, interpolation, ',');
        s >> imgHorizontal;
        s.ignore();
        s >> imgVertical;
        s.ignore();
        getline(s, rotationCenter, ',');
        s >> rotationAngle;

        processImage(imgName, imgScale, interpolation, imgHorizontal, imgVertical, rotationCenter, rotationAngle);
    }

    return 0;
}