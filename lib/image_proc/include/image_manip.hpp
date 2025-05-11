#ifndef IMAGE_MANIP_H
#define IMAGE_MANIP_H

#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <opencv4/opencv2/opencv.hpp>

class ImageManip{
    public:
        ImageManip();
        ~ImageManip();

        void load_image(std::string img_path);
    private:
    protected:
};

#endif