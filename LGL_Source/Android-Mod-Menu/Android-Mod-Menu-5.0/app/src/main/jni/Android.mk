LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := MyLibName

LOCAL_SRC_FILES := Main.cpp \
                   Menu/Menu.cpp \
                   Menu/Setup.cpp \
                   Menu/Jni.cpp \
                   Includes/Utils.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Includes
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Menu

LOCAL_LDLIBS := -L$(LOCAL_PATH)/libs/$(TARGET_ARCH_ABI) -llog -landroid

LOCAL_CPPFLAGS := -std=c++17 -fvisibility=hidden -ffunction-sections -fdata-sections
LOCAL_CPPFLAGS += -Wno-error=format-security -fpack-struct=8

include $(BUILD_SHARED_LIBRARY)
