# Compiler
CXX = g++

# OpenCV config
OPENCV_CFLAGS  = $(shell pkg-config --cflags opencv4)
OPENCV_LIBS    = $(shell pkg-config --libs opencv4)

# Compiler flags
CXXFLAGS = -std=c++17 -Wall -Wextra -I../lib/image_proc/src $(OPENCV_CFLAGS)

# Source files 
SRC = src/main.cpp lib/image_proc/src/image_manip.cpp

# Objects
OBJ = $(SRC:.cpp=.o)

# Executable file name.
TARGET = main

# Output directory (currently unused)
OUTDIR = image_proc_lib

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(OPENCV_LIBS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)
