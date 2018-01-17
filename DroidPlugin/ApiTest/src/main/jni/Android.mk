LOCAL_PATH := $(call my-dir)
MAIN_LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := DP_Native

LOCAL_CFLAGS := -Wno-error=format-security -fpermissive -DLOG_TAG=\"DP_Native\"
LOCAL_CFLAGS += -fno-rtti -fno-exceptions

LOCAL_C_INCLUDES += $(MAIN_LOCAL_PATH)
LOCAL_C_INCLUDES += $(MAIN_LOCAL_PATH)/help
LOCAL_C_INCLUDES += $(MAIN_LOCAL_PATH)/help/nativehelper
LOCAL_C_INCLUDES += $(MAIN_LOCAL_PATH)/HelperJni

LOCAL_SRC_FILES := Core.cpp \
                   help/nativehelper/JNIHelp.cpp \
                   HelperJni/HelperJni.cpp

LOCAL_LDLIBS := -llog -latomic

include $(BUILD_SHARED_LIBRARY)