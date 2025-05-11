#include "../include/image_manip.hpp"


ImageManip::ImageManip(){
    std::cout << "Image Manip object has been created\n";
}

ImageManip::~ImageManip(){
    std::cout << "Image Manip object has been destroyed\n";
}

void ImageManip::load_image(std::string img_path){
    cv::Mat img = cv::imread(img_path);
    if (img.empty()){
        std::cerr << "Failed to load an image\n";
    }
    cv::imshow("Image", img);
    cv::waitKey(0);
}