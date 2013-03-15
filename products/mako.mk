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

# Droid_Concepts SPEED FREEK init.d and build.prop tweaks
include vendor/Droid_Concepts/products/speed_freek.mk

# Bravia 2 engine
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/proprietary/common/beats/etc/be_movie:system/etc/be_movie \
    vendor/Droid_Concepts/proprietary/common/beats/etc/be_movie_setting:system/etc/be_movie_setting \
    vendor/Droid_Concepts/proprietary/common/beats/etc/be2_album:system/etc/be2_album \
    vendor/Droid_Concepts/proprietary/common/beats/etc/be_album:system/etc/be_album \
    vendor/Droid_Concepts/proprietary/common/beats/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml:system/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libiwi.so:system/lib/libiwi.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libiwiOmx.so:system/lib/libiwiOmx.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libiwiOmxUtil.so:system/lib/libiwiOmxUtil.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libmbe.so:system/lib/libmbe.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libmbe_paramselector.so:system/lib/libmbe_paramselector.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libSwiqiController.so:system/lib/libSwiqiController.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libswiqisettinghelper.so:system/lib/libswiqisettinghelper.so \
    vendor/Droid_Concepts/proprietary/common/beats/framework/com.sonyericsson.android.SwIqiBmp.jar:system/framework/com.sonyericsson.android.SwIqiBmp.jar

# Beats Audio
PRODUCT_COPY_FILES += \
    vendor/Droid_Concepts/proprietary/common/beats/app/DolbyMobile.apk:system/app/DolbyMobile.apk \
    vendor/Droid_Concepts/proprietary/common/beats/app/SwiqiSettingsService.apk:system/app/SwiqiSettingsService.apk \
    vendor/Droid_Concepts/proprietary/common/beats/bin/alsa_amixer:system/bin/alsa_amixer \
    vendor/Droid_Concepts/proprietary/common/beats/bin/alsa_aplay:system/bin/alsa_aplay \
    vendor/Droid_Concepts/proprietary/common/beats/bin/alsa_ctl:system/bin/alsa_ctl \
    vendor/Droid_Concepts/proprietary/common/beats/bin/basimage_ibeats.bin:system/bin/basimage_ibeats.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/basimage_ibeats_solo.bin:system/bin/basimage_ibeats_solo.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/basimage_ibeats_solo_x.bin:system/bin/basimage_ibeats_solo_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/basimage_ibeats_x.bin:system/bin/basimage_ibeats_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/beatsbass:system/bin/beatsbass \
    vendor/Droid_Concepts/proprietary/common/beats/bin/beatsnormal:system/bin/beatsnormal \
    vendor/Droid_Concepts/proprietary/common/beats/bin/dynimage_ibeats.bin:system/bin/dynimage_ibeats.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/dynimage_ibeats_solo.bin:system/bin/dynimage_ibeats_solo.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/dynimage_ibeats_solo_x.bin:system/bin/dynimage_ibeats_solo_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/dynimage_ibeats_x.bin:system/bin/dynimage_ibeats_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/mm-audio-acdb-test:system/bin/mm-audio-acdb-test \
    vendor/Droid_Concepts/proprietary/common/beats/bin/mm-audio-alsa-test:system/bin/mm-audio-alsa-test \
    vendor/Droid_Concepts/proprietary/common/beats/bin/mm-jpeg-dec-test-client:system/bin/mm-jpeg-dec-test-client \
    vendor/Droid_Concepts/proprietary/common/beats/bin/mm-jpeg-enc-test-client:system/bin/mm-jpeg-enc-test-client \
    vendor/Droid_Concepts/proprietary/common/beats/bin/mm-venc-omx-test720p:system/bin/mm-venc-omx-test720p \
    vendor/Droid_Concepts/proprietary/common/beats/bin/mm-video-encdrv-test:system/bin/mm-video-encdrv-test \
    vendor/Droid_Concepts/proprietary/common/beats/bin/peqimage_ibeats.bin:system/bin/peqimage_ibeats.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/peqimage_ibeats_solo.bin:system/bin/peqimage_ibeats_solo.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/peqimage_ibeats_solo_x.bin:system/bin/peqimage_ibeats_solo_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/peqimage_ibeats_x.bin:system/bin/peqimage_ibeats_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/bin/snd:system/bin/snd \
    vendor/Droid_Concepts/proprietary/common/beats/bin/snd:system/bin/snd \
    vendor/Droid_Concepts/proprietary/common/beats/bin/snd3254:system/bin/snd3254 \
    vendor/Droid_Concepts/proprietary/common/beats/bin/sound:system/bin/sound \
    vendor/Droid_Concepts/proprietary/common/beats/bin/sound8960:system/bin/sound8960 \
    vendor/Droid_Concepts/proprietary/common/beats/bin/sound8x60:system/bin/sound8x60 \
    vendor/Droid_Concepts/proprietary/common/beats/bin/spkamp:system/bin/spkamp \
    vendor/Droid_Concepts/proprietary/common/beats/bin/alsa_ctl:system/bin/dementedbeats \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AdieHWCodec_BEATS_HW.csv:system/etc/AdieHWCodec_BEATS_HW.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/aeqcoe.txt:system/etc/aeqcoe.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AIC3008_REG_DualMic.csv:system/etc/AIC3008_REG_DualMic.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AIC3008_REG_DualMic_XC.csv:system/etc/AIC3008_REG_DualMic_XC.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AIC3254_REG_XD.csv:system/etc/AIC3254_REG_XD.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/asound.conf:system/etc/asound.conf \
    vendor/Droid_Concepts/proprietary/common/beats/etc/audio_effects.conf:system/etc/audio_effects.conf \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AudioFilterPlatform.csv:system/etc/AudioFilterPlatform.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AudioFilterProduct.csv:system/etc/AudioFilterProduct.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/basimage_gec.bin:system/etc/basimage_gec.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/basimage_gec_bt.bin:system/etc/basimage_gec_bt.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/basimage_gec_x.bin:system/etc/basimage_gec_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/basimage_ibeats.bin:system/etc/basimage_ibeats.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/basimage_ibeats_pro.bin:system/etc/basimage_ibeats_pro.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/basimage_ibeats_solo.bin:system/etc/basimage_ibeats_solo.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/basimage_ibeats_solo_x.bin:system/etc/basimage_ibeats_solo_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/basimage_ibeats_studio.bin:system/etc/basimage_ibeats_studio.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/basimage_ibeats_x.bin:system/etc/basimage_ibeats_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/dynimage_gec.bin:system/etc/dynimage_gec.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/dynimage_gec_bt.bin:system/etc/dynimage_gec_bt.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/dynimage_gec_x.bin:system/etc/dynimage_gec_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/dynimage_ibeats.bin:system/etc/dynimage_ibeats.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/dynimage_ibeats_pro.bin:system/etc/dynimage_ibeats_pro.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/dynimage_ibeats_solo.bin:system/etc/dynimage_ibeats_solo.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/dynimage_ibeats_solo_x.bin:system/etc/dynimage_ibeats_solo_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/dynimage_ibeats_studio.bin:system/dynimage_ibeats_x.bin/dynimage_ibeats_studio.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/dynimage_ibeats_x.bin:system/etc/CodecDSPID_WB \
    vendor/Droid_Concepts/proprietary/common/beats/etc/eqfilter.txt:system/etc/eqfilter.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/lmfilter.txt:system/etc/lmfilter.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/media_profiles.xml:system/etc/media_profiles.xml \
    vendor/Droid_Concepts/proprietary/common/beats/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    vendor/Droid_Concepts/proprietary/common/beats/etc/peqimage_gec.bin:system/etc/peqimage_gec.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/peqimage_gec_bt.bin:system/etc/peqimage_gec_bt.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/peqimage_gec_x.bin:system/etc/peqimage_gec_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/peqimage_ibeats.bin:system/etc/peqimage_ibeats.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/peqimage_ibeats_pro.bin:system/etc/peqimage_ibeats_pro.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/peqimage_ibeats_solo.bin:system/etc/peqimage_ibeats_solo.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/peqimage_ibeats_solo_x.bin:system/etc/peqimage_ibeats_solo_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/peqimage_ibeats_studio.bin:system/etc/peqimage_ibeats_studio.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/peqimage_ibeats_x.bin:system/etc/peqimage_ibeats_x.bin \
    vendor/Droid_Concepts/proprietary/common/beats/etc/situation.txt:system/etc/situation.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/Sound_Original.txt:system/etc/Sound_Original.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundbooster.txt:system/etc/soundbooster.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/SRSAudioFilter.csv:system/etc/SRSAudioFilter.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/stream_earpiece.txt:system/etc/stream_earpiece.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/stream_headset.txt:system/etc/stream_headset.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/stream_speaker.txt:system/etc/stream_speaker.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/TPA2051_CFG_BEATS_HW.csv:system/etc/TPA2051_CFG_BEATS_HW.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv \
    vendor/Droid_Concepts/proprietary/common/beats/etc/Volume.db:system/etc/Volume.db \
    vendor/Droid_Concepts/proprietary/common/beats/etc/audio/eqfilter.txt:system/etc/audio/eqfilter.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/audio/lmfilter.txt:system/etc/audio/lmfilter.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/audio/situation.txt:system/etc/audio/situation.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/audio/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/audio/stream_headset.txt:system/etc/audio/stream_headset.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/audio/stream_speaker.txt:system/etc/audio/stream_speaker.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/permissions/com.sonyericsson.audioeffectif.xml:system/etc/permissions/com.sonyericsson.audioeffectif.xml \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Beats.txt:system/etc/soundimage/Sound_Beats.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Dolby_A_HP.txt:system/etc/soundimage/Sound_Dolby_A_HP.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Dolby_A_SPK.txt:system/etc/soundimage/Sound_Dolby_A_SPK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Dolby_V_HP.txt:system/etc/soundimage/Sound_Dolby_V_HP.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Dolby_V_SPK.txt:system/etc/soundimage/Sound_Dolby_V_SPK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Dualmic.txt:system/etc/soundimage/Sound_Dualmic.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Dualmic_EP.txt:system/etc/soundimage/Sound_Dualmic_EP.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Dualmic_SPK.txt:system/etc/soundimage/Sound_Dualmic_SPK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Original_BCLK.txt:system/etc/soundimage/Sound_Original_BCLK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Original_Rec_MFG.txt:system/etc/soundimage/Sound_Original_Rec_MFG.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Original_Recording_BCLK.txt:system/etc/soundimage/Sound_Original_Recording_BCLK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Original_SPK_BCLK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Original_SPK_MFG.txt:system/etc/soundimage/Sound_Original_SPK_MFG.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Recording_Mono.txt:system/etc/soundimage/Sound_Recording_Mono.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/srs_global.cfg:system/etc/srs_global.cfg/srs_bypass \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/srsfx_trumedia_music_wide.cfg:system/etc/soundimage/srsfx_trumedia_music_wide.cfg \
    vendor/Droid_Concepts/proprietary/common/beats/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    vendor/Droid_Concepts/proprietary/common/beats/framework/semc_audioeffectif.jar:system/framework/semc_audioeffectif.jar \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libaudioeffect_jni.so:system/lib/libaudioeffect_jni.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libbeatscorehtc.so:system/lib/libbeatscorehtc.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libsrscorehtc.so:system/lib/libsrscorehtc.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libsrsprocessing.so:system/lib/libsrsprocessing.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/libswiqisettinghelper.so:system/lib/libswiqisettinghelper.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libaudiopreprocessing.so:system/lib/soundfx/libaudiopreprocessing.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libbeatsbass.so:system/lib/soundfx/libbeatsbass.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libbundlewrapper.so:system/lib/soundfx/libbundlewrapper.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libclearaudiowrapper.so:system/lib/soundfx/libclearaudiowrapper.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libcyanogen-dsp.so:system/lib/soundfx/libcyanogen-dsp.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libdownmix.so:system/lib/soundfx/libdownmix.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libdownmix.so:system/lib/soundfx/libdownmix.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libhearingprotection.so:system/lib/soundfx/libhearingprotection.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libposteffectwrapper.so:system/lib/soundfx/libposteffectwrapper.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libpreeffectwrapper.so:system/lib/soundfx/libpreeffectwrapper.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libreverbwrapper.so:system/lib/soundfx/libreverbwrapper.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libsoundaurawrapper.so:system/lib/soundfx/libsoundaurawrapper.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libsrscore.so:system/lib/soundfx/libsrscore.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libsrsfx.so:system/lib/soundfx/libsrsfx.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libsrstb.so:system/lib/soundfx/libsrstb.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libvisualizer.so:system/lib/soundfx/libvisualizer.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libvptwrapper.so:system/lib/soundfx/libvptwrapper.so \
    vendor/Droid_Concepts/proprietary/common/beats/lib/soundfx/libxloudwrapper.so:system/lib/soundfx/libxloudwrapper.so \
    vendor/Droid_Concepts/proprietary/common/beats/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf

# Additional Droid_Concepts Apps
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
