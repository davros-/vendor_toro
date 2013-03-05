# Generic product
PRODUCT_NAME := Droid_Concepts
PRODUCT_BRAND := Droid_Concepts
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/Droid_Concepts/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1

# T-mobile heme engine
include vendor/Droid_Concepts/products/themes_common.mk

# Common packages 
PRODUCT_PACKAGES += \
    Calendar \
    Chronus \
    DCWallpapers \
    DCBeats \
    Gallery2
    

# Common Google Applications and libs
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/proprietary/common/app/ApexLauncher_v1.4.3.apk:system/app/ApexLauncher_v1.4.3.apk \
    vendor/Droid_Concepts/proprietary/common/app/Chrome.apk:system/app/Chrome.apk \
    vendor/Droid_Concepts/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/Droid_Concepts/proprietary/common/app/Gmail2.apk:system/app/Gmail2.apk \
    vendor/Droid_Concepts/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/Droid_Concepts/proprietary/common/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
    vendor/Droid_Concepts/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/Droid_Concepts/proprietary/common/app/GoogleEars.apk:system/app/GoogleEars.apk \
    vendor/Droid_Concepts/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/Droid_Concepts/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/Droid_Concepts/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/Droid_Concepts/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/Droid_Concepts/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/Droid_Concepts/proprietary/common/app/GmsCore.apk:system/app/GmsCore.apk \
    vendor/Droid_Concepts/proprietary/common/app/LatinIMEDictionaryPack.apk:system/app/LatinIMEDictionaryPack.apk \
    vendor/Droid_Concepts/proprietary/common/app/Maps.apk:system/app/Maps.apk \
    vendor/Droid_Concepts/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/Droid_Concepts/proprietary/common/app/Music.apk:system/app/Music.apk \
    vendor/Droid_Concepts/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/Droid_Concepts/proprietary/common/app/NotificationsWidget.apk:system/app/NotificationsWidget.apk \
    vendor/Droid_Concepts/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/Droid_Concepts/proprietary/common/app/PartnerBookmarksProvider.apk:system/app/PartnerBookmarksProvider.apk \
    vendor/Droid_Concepts/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/Droid_Concepts/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/Droid_Concepts/proprietary/common/app/Street.apk:system/app/Street.apk \
    vendor/Droid_Concepts/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/Droid_Concepts/proprietary/common/app/Talkback.apk:system/app/Talkback.apk \
    vendor/Droid_Concepts/proprietary/common/app/Velvet.apk:system/app/Velvet.apk \
    vendor/Droid_Concepts/proprietary/common/app/YouTube.apk:system/app/YouTube.apk \
    vendor/Droid_Concepts/proprietary/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/Droid_Concepts/proprietary/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/Droid_Concepts/proprietary/common/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/Droid_Concepts/proprietary/common/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/Droid_Concepts/proprietary/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/Droid_Concepts/proprietary/common/lib/libchromeview.so:system/lib/libchromeview.so \
    vendor/Droid_Concepts/proprietary/common/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so \
    vendor/Droid_Concepts/proprietary/common/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/Droid_Concepts/proprietary/common/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so \
    vendor/Droid_Concepts/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/Droid_Concepts/proprietary/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/Droid_Concepts/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/Droid_Concepts/proprietary/common/lib/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/Droid_Concepts/proprietary/common/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/Droid_Concepts/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/Droid_Concepts/proprietary/common/lib/libttscompat.so:system/lib/libttscompat.so \
    vendor/Droid_Concepts/proprietary/common/lib/libttspico.so:system/lib/libttspico.so \
    vendor/Droid_Concepts/proprietary/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/Droid_Concepts/proprietary/common/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so \
    vendor/Droid_Concepts/proprietary/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/Droid_Concepts/proprietary/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so 

# Common Applications
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/proprietary/common/app/SuperSU.apk:system/app/SuperSU.apk \
    vendor/Droid_Concepts/proprietary/common/app/TricksterMod.apk:system/app/TricksterMod.apk 

# Common Keyboard w/ Gestures
#PRODUCT_COPY_FILES += \
#    vendor/Droid_Concepts/proprietary/common/app/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
#    vendor/Droid_Concepts/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so 

# Common Binary files
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/proprietary/common/bin/flash_image:system/bin/flash_image \
    vendor/Droid_Concepts/proprietary/common/xbin/bash:system/xbin/bash \
    vendor/Droid_Concepts/proprietary/common/xbin/zipalign:system/xbin/zipalign \
    vendor/Droid_Concepts/proprietary/common/xbin/su:system/xbin/su 
    
# Common files for init.d support and etc files
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/proprietary/common/bin/sysinit:system/bin/sysinit \
    vendor/Droid_Concepts/proprietary/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/Droid_Concepts/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf 

# BEATS Audio
include vendor/Droid_Concepts/products/beats_audio.mk

# DEMENTED-Droid SPEED FREEK init.d and build.prop tweaks
include vendor/Droid_Concepts/products/speed_freek.mk

# Common scripts
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/proprietary/common/xbin/cpuinfo:system/xbin/cpuinfo \
    vendor/Droid_Concepts/proprietary/common/xbin/rb:system/xbin/rb \
    vendor/Droid_Concepts/proprietary/common/xbin/rr:system/xbin/rr \
    vendor/Droid_Concepts/proprietary/common/bin/shutdown:system/bin/shutdown \
    vendor/Droid_Concepts/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/Droid_Concepts/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/Droid_Concepts/proprietary/common/xbin/zipalign_all:system/xbin/zipalign_all \
    vendor/Droid_Concepts/proprietary/common/xbin/zipalign_app:system/xbin/zipalign_app 

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# BusyBox binary
PRODUCT_COPY_FILES +=  \
    vendor/Droid_Concepts/proprietary/common/xbin/busybox:system/xbin/busybox


