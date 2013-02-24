# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Inherit common product files.
$(call inherit-product, vendor/Droid_Concepts/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := Droid_Concepts_toroplus
PRODUCT_BRAND := google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT=samsung/mysidspr/toroplus:4.0.4/IMM76I/330937:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.0.4 IMM76I 330937 release-keys" BUILD_NUMBER=330937

# Inherit common build.prop overrides
-include vendor/Droid_Concepts/products/common_versions.mk

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/Droid_Concepts/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/Droid_Concepts/proprietary/tuna/app/Gallery2.apk:system/app/Gallery2.apk \
  
# Inherit media effect blobs
-include vendor/Droid_Concepts/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/Droid_Concepts/products/common_facelock.mk

# Inherit drm blobs
-include vendor/Droid_Concepts/products/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/Droid_Concepts/products/common_speech_recognition.mk
