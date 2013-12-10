LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := code.v8.test
LOCAL_SRC_FILES := code.v8.test.cpp

include $(BUILD_SHARED_LIBRARY)
