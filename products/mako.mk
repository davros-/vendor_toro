# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Mako overlay files
PRODUCT_PACKAGE_OVERLAYS += vendor/Droid_Concepts/overlay/mako

# Inherit common product files.
$(call inherit-product, vendor/Droid_Concepts/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := Droid_Concepts_mako
PRODUCT_BRAND := Google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Inherit common build.prop overrides
-include vendor/Droid_Concepts/products/common_versions.mk

# Common packages 
PRODUCT_PACKAGES += \
    Torch \

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/Droid_Concepts/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
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
