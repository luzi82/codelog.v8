LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libv8_base
LOCAL_SRC_FILES := ../../../v8/out/android_arm.release/obj.target/tools/gyp/libv8_base.arm.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libv8_snapshot
LOCAL_SRC_FILES := ../../../v8/out/android_arm.release/obj.target/tools/gyp/libv8_snapshot.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libicuuc
LOCAL_SRC_FILES := ../../../v8/out/android_arm.release/obj.target/third_party/icu/libicuuc.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libicui18n
LOCAL_SRC_FILES := ../../../v8/out/android_arm.release/obj.target/third_party/icu/libicui18n.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libicudata
LOCAL_SRC_FILES := ../../../v8/out/android_arm.release/obj.target/third_party/icu/libicudata.a
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)

LOCAL_MODULE := code.v8.test

LOCAL_SRC_FILES := code.v8.test.cpp

#LOCAL_LDLIBS := -lrt
#  -lv8_base \
#  -lv8_snapshot \
#  -licuuc \
#  -licui18n \
#  -licudata

LOCAL_C_INCLUDES := \
  ../../v8/include

LOCAL_STATIC_LIBRARIES := \
  libv8_base \
  libv8_snapshot \
  libicui18n \
  libicuuc \
  libicudata

include $(BUILD_SHARED_LIBRARY)
