# Inherit AOSP device configuration for mako.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Grouper Overlays.
PRODUCT_PACKAGE_OVERLAYS += vendor/Droid_Concepts/overlay/grouper

# Inherit common product files.
$(call inherit-product, vendor/Droid_Concepts/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := Droid_Concepts_grouper
PRODUCT_BRAND := asus
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

# Inherit common build.prop overrides
-include vendor/Droid_Concepts/products/common_versions.mk

# Droid_Concepts SPEED FREEK init.d and build.prop tweaks
include vendor/Droid_Concepts/products/speed_freek_grouper.mk

# Additional Droid_Concepts Apps
PRODUCT_PACKAGES += \
    Torch

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/Droid_Concepts/proprietary/grouper/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/Droid_Concepts/proprietary/tuna/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/Droid_Concepts/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/Droid_Concepts/proprietary/tuna/media/audio/notifications/Simple_High.mp3:system/media/audio/notifications/Simple_High.mp3 \
    vendor/Droid_Concepts/proprietary/tuna/media/audio/ringtones/Provincial_Synthetic.ogg:system/media/audio/ringtones/Provincial_Synthetic.ogg \
    vendor/Droid_Concepts/proprietary/common/app/Wallet.apk:system/app/Wallet.apk

# Inherit media effect blobs
-include vendor/Droid_Concepts/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/Droid_Concepts/products/common_facelock.mk

# Inherit drm blobs
-include vendor/Droid_Concepts/products/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/Droid_Concepts/products/common_speech_recognition.mk
