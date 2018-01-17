APP_ABI := armeabi armeabi-v7a x86
APP_PLATFORM := android-19
APP_STL := stlport_static
APP_OPTIM := release
DP_ROOT          := $(call my-dir)
NDK_MODULE_PATH  := $(NDK_MODULE_PATH):$(DP_ROOT)