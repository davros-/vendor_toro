# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/droid_concepts/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := droid_concepts_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_ID=JRO03C BUILD_FINGERPRINT=google/takju/maguro:4.1.1/JRO03C/398337:user/release-keys PRIVATE_BUILD_DESC="takju-user 4.1.1 JRO03C 398337 release-keys" BUILD_NUMBER=235179

# Inherit common build.prop overrides
-include vendor/elite/config/common_versions.mk

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/droid_concepts/proprietary/maguro/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    vendor/droid_concepts/proprietary/maguro/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/droid_concepts/proprietary/maguro/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/droid_concepts/proprietary/maguro/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/droid_concepts/proprietary/maguro/vendor/etc/smc_normal_world_android_cfg.ini:system/vendor/etc/smc_normal_world_android_cfg.ini \
    vendor/droid_concepts/proprietary/maguro/vendor/firmware/smc_pa_wvdrm.ift:system/vendor/firmware/smc_pa_wvdrm.ift \
    vendor/droid_concepts/proprietary/maguro/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    vendor/droid_concepts/proprietary/maguro/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/droid_concepts/proprietary/maguro/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    vendor/droid_concepts/proprietary/maguro/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \


# Inherit Face lock security blobs
-include vendor/droid_concepts/config/common_facelock.mk

# Inherit drm blobs
-include vendor/droid_concepts/config/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/droid_concepts/config/common_speech_recognition.mk

