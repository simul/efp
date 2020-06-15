LOCAL_PATH := $(call my-dir)

#--------------------------------------------------------
# libvavstream.a
#
# AVStream
#--------------------------------------------------------
include $(CLEAR_VARS)				# clean everything up to prepare for a module

LOCAL_MODULE    := efp	        # generate efp.a

include $(LOCAL_PATH)/../../../../client/cflags.mk

LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/..

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_SRC_FILES  := ../ElasticFrameProtocol.cpp

LOCAL_CPPFLAGS += -Wc++17-extensions
LOCAL_CPP_FEATURES += exceptions
include $(BUILD_STATIC_LIBRARY)		# start building based on everything since CLEAR_VARS

