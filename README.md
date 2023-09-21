# zygisk-module-sample-cmake

## Building

build for one target

```shell
cmake -G Ninja -B arm64-v8a -S . -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=21 -DCMAKE_ANDROID_ARCH_ABI=arm64-v8a -DCMAKE_ANDROID_NDK="${ANDROID_NDK_HOME}" -DCMAKE_ANDROID_STL_TYPE=none -DCMAKE_ANDROID_RTTI=off -DCMAKE_ANDROID_EXCEPTIONS=off
cmake --build build -j $(nproc)
```

build for multiple targets:

```shell
./build.sh
```
