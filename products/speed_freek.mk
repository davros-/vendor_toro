# Droid_Concepts SPEED FREEK
PRODUCT_PROPERTY_OVERRIDES += \
    windowsmgr.max_events_per_sec=350 \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    ro.config.nocheckin=1 \
    debug.performance.tuning=1 \
    persist.service.swiqi.enable=1 \
    video.accelerate.hw=1 \
    ro.ril.enable.3g.prefix=1 \
    ro.ril.hep=1 \
    ro.ril.hsxpa=3 \
    ro.ril.enable.dtm=1 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=8 \
    ro.ril.enable.a53=1 \
    ro.ril.hsupa.category=5 \
    persist.sys.purgeable_assets=1 \
    pm.sleep_mode=1 \
    ro.home_app_adj=1 \
    ro.ext4fs=1 \
    persist.sys.use_dithering=0 \
    ro.ril.disable.power.collapse=0 \
    dalvik.vm.heapstartsize=128m \
    dalvik.vm.heapgrowthlimit=320m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heaputilization=0.05 \
    dalvik.vm.heapidealfree=8388608 \
    dalvik.vm.heapconcurrentstart=2097152 \
    dalvik.vm.verify-bytecode=false \
    ro.dalvik.vm.checkjni=0 \
    dalvik.vm.dexopt-flags=v=n,o=v \
    debug.composition.type=gpu \
    ro.max.fling_velocity=15000 \
    ro.min.fling_velocity=8000 \
    ro.config.hw_fast_dormancy=1 \
    net.dns1=8.8.4.4 \
    net.dns2=8.8.8.8 

# init.d support
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/proprietary/common/etc/init.d/02dementedkernel:system/etc/init.d/02dementedkernel \
    vendor/Droid_Concepts/proprietary/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/Droid_Concepts/proprietary/common/etc/init.d/03dementedgov:system/etc/init.d/03dementedgov \
    vendor/Droid_Concepts/proprietary/common/etc/init.d/04dementededt_tweaks:system/etc/init.d/04dementededt_tweaks \
    vendor/Droid_Concepts/proprietary/common/etc/init.d/05dementedrfs:system/etc/init.d/05dementedrfs \
    vendor/Droid_Concepts/proprietary/common/etc/init.d/07dementedtweaks:system/etc/init.d/07dementedtweaks \
    vendor/Droid_Concepts/proprietary/common/etc/init.d/09dementedsetrenice:system/etc/init.d/09dementedsetrenice \
    vendor/Droid_Concepts/proprietary/common/etc/init.d/80dementedloopysmoothnesstweak:system/etc/init.d/80dementedloopysmoothnesstweak \
    vendor/Droid_Concepts/proprietary/common/etc/init.d/91dementedzipalign:system/etc/init.d/91dementedzipalign \
    vendor/Droid_Concepts/proprietary/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/Droid_Concepts/proprietary/common/etc/init.d/99dementedsystem:system/etc/init.d/99dementedsystem 
