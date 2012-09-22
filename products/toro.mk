# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/Droid_Concepts/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := Droid_Concepts_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.1.1/JRO03O/424425:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRO03O 424425 release-keys" BUILD_NUMBER=424425

# Inherit common build.prop overrides
-include vendor/Droid_Concepts/products/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/Droid_Concepts/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/Droid_Concepts/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/Droid_Concepts/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/Droid_Concepts/proprietary/common/app/Wallet.apk:system/app/Wallet.apk

# Inherit media effect blobs
-include vendor/Droid_Concepts/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/Droid_Concepts/products/common_facelock.mk

# Inherit drm blobs
-include vendor/Droid_Concepts/products/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/Droid_Concepts/products/common_speech_recognition.mk


