#!/bin/bash

# Clean previous iOS build
rm -rf build_ios
mkdir -p build_ios
cd build_ios

# Configure CMake for iOS
cmake .. \
  -DCMAKE_SYSTEM_NAME=iOS \
  -DCMAKE_OSX_DEPLOYMENT_TARGET=17.0 \
  -DCMAKE_OSX_ARCHITECTURES=arm64 \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_LOADER=ON \
  -DBUILD_TESTS=OFF \
  -DBUILD_API_LAYERS=OFF \
  -DBUILD_SPECIFICATION=OFF \
  -DCMAKE_INSTALL_PREFIX=./install \
  -DCMAKE_C_FLAGS="-miphoneos-version-min=17.0" \
  -DCMAKE_CXX_FLAGS="-miphoneos-version-min=17.0"

# Build the OpenXR loader for iOS
make -j$(sysctl -n hw.ncpu) openxr_loader

echo "iOS OpenXR loader built successfully!"
echo "Library location: $(pwd)/src/loader/libopenxr_loader.dylib"