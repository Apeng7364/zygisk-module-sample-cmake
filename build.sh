#!/usr/bin/env sh
TARGETS="armeabi-v7a arm64-v8a x86 x86_64"

for TARGET in ${TARGETS}
do
  # create one build dir per target architecture
  mkdir -p "build/${TARGET}"

  cmake -G Ninja -B "build/${TARGET}" -S . -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=21 -DCMAKE_ANDROID_ARCH_ABI="${TARGET}" -DCMAKE_ANDROID_NDK="${ANDROID_NDK_HOME}" -DCMAKE_ANDROID_STL_TYPE=none -DCMAKE_ANDROID_RTTI=off -DCMAKE_ANDROID_EXCEPTIONS=off -DCMAKE_BUILD_TYPE=Release

  cmake --build "build/${TARGET}" --config Release -j 15
done
