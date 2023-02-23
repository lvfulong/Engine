#!/bin/sh

#build_ios_target release arm64 iphoneos
function build_ios {
    local build_type=$1
    local arch=$2
    local platform=$3
    local build_dir="build/cmake-ios-${build_type}-${arch}"
    mkdir -p "${build_dir}"
    cd "${build_dir}"

    cmake \
      -G "Unix Makefiles" \
      -DCMAKE_BUILD_TYPE="${build_type}" \
      -DIOS_ARCH="${arch}" \
      -DPLATFORM_NAME="${platform}" \
      -DIOS=1 \
      -DCMAKE_TOOLCHAIN_FILE=../../cmake/clang/iOS.cmake \
      ../..

   #cmake --build .
   make
   cd ../..
}
build_ios release arm64 iphoneos
build_ios release x86_64 iphonesimulator
