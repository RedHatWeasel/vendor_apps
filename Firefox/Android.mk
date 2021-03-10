LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Firefox
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := firefox-86-1-1.apk
LOCAL_OVERRIDES_PACKAGES := \
	Browser2 \
	QuickSearchBox

LOCAL_PREBUILT_JNI_LIBS := \
	lib/arm64-v8a/libfreebl3.so \
	lib/arm64-v8a/libglean_ffi.so \
	lib/arm64-v8a/libjnidispatch.so \
	lib/arm64-v8a/liblgpllibs.so \
	lib/arm64-v8a/libmegazord.so \
	lib/arm64-v8a/libmozavcodec.so \
	lib/arm64-v8a/libmozavutil.so \
	lib/arm64-v8a/libmozglue.so \
	lib/arm64-v8a/libnss3.so \
	lib/arm64-v8a/libnssckbi.so \
	lib/arm64-v8a/libplugin-container.so \
	lib/arm64-v8a/libsoftokn3.so \
	lib/arm64-v8a/libxul.so
LOCAL_MODULE_TARGET_ARCH := arm64

include $(BUILD_PREBUILT)
