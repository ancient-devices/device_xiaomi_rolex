#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The XPerience Project
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/rolex

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    vendor/xiomi/rolex \
    kernel/xiaomi/msm8937

# Architecture
TARGET_ARCH 	    	:= arm64
TARGET_ARCH_VARIANT 	:= armv8-a
TARGET_CPU_ABI 		:= arm64-v8a
TARGET_CPU_ABI2 	:=
TARGET_CPU_VARIANT 	:= cortex-a53

# Second architecture
TARGET_2ND_ARCH 	:= arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI 	:= armeabi-v7a
TARGET_2ND_CPU_ABI2 	:= armeabi
TARGET_2ND_CPU_VARIANT 	:= cortex-a53

TARGET_BOARD_PLATFORM 	  := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno308
BUILD_BROKEN_DUP_RULES := true

# Binder
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME 	:= msm8937
TARGET_NO_BOOTLOADER 		:= true

# kernel
BOARD_KERNEL_BASE		:= 0x80000000
BOARD_KERNEL_CMDLINE 		:= console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 androidboot.usbconfigfs=false loop.max_part=7
BOARD_KERNEL_IMAGE_NAME 	:= Image.gz-dtb
BOARD_KERNEL_PAGESIZE 		:=  2048
BOARD_MKBOOTIMG_ARGS 		:= --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100
TARGET_KERNEL_CONFIG 		:= mi8937_defconfig
TARGET_KERNEL_SOURCE 		:= kernel/xiaomi/msm8937
TARGET_KERNEL_VERSION         := 4.9
TARGET_KERNEL_NEW_GCC_COMPILE := true
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(PWD)/prebuilts/gcc64/bin/aarch64-elf-
TARGET_KERNEL_CROSS_COMPILE_PREFIX_ARM32 := $(PWD)/prebuilts/gcc32/bin/arm-eabi-
TARGET_EXFAT_DRIVER		:= sdfat

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
AUDIO_FEATURE_ENABLED_HIFI_AUDIO := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_EXTN_RESAMPLER := false
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_HDMI_EDID := true
AUDIO_FEATURE_ENABLED_EXT_HDMI := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := false
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := false
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := false
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
AUDIO_FEATURE_ENABLED_SSR := false
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_DTS_EAGLE := false
BOARD_USES_SRS_TRUEMEDIA := false
DTS_CODEC_M_ := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := true
MM_AUDIO_ENABLED_FTM := true
MM_AUDIO_ENABLED_SAFX := true
TARGET_USES_QCOM_MM_AUDIO := true
AUDIO_FEATURE_ENABLED_HW_ACCELERATED_EFFECTS := false
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM                   := true
BLUETOOTH_HCI_USE_MCT                       := true
QCOM_BT_USE_SMD_TTY                         := true
QCOM_BT_USE_BTNV := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA   := true
BOARD_QTI_CAMERA_32BIT_ONLY  := true
TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
    /vendor/bin/mm-qcamera-daemon=23
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_TS_MAKEUP             := true

# Clang
INTERNAL_LOCAL_CLANG_EXCEPTION_PROJECTS += $(DEVICE_PATH)

# CNE / DPM
BOARD_USES_QCNE := true

# Dexpreopt
ifeq ($(HOST_OS),linux)
  WITH_DEXPREOPT ?= true
  WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY ?= true
endif

#Display
BOARD_USES_ADRENO := true
TARGET_SCREEN_DENSITY := 280
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_USES_C2D_COMPOSITION := true
USE_OPENGL_RENDERER := true
TARGET_CONTINUOUS_SPLASH_ENABLED := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "proc/gesture/onoff"

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TARGET_LEGACY_HW_DISK_ENCRYPTION := true

# FM
BOARD_HAVE_QCOM_FM                 := true
TARGET_QCOM_NO_FM_FIRMWARE         := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := true
USE_DEVICE_SPECIFIC_GPS := true
TARGET_NO_RPC := true

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/compatibility_matrix.xml

# Init
#TARGET_INIT_VENDOR_LIB         := libinit_rolex
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_rolex
TARGET_PLATFORM_DEVICE_BASE    := /devices/soc/
TARGET_RECOVERY_DEVICE_MODULES := libinit_rolex

# Keystore
TARGET_PROVIDES_KEYMASTER := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := false

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Lockscreen real time charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Malloc
MALLOC_SVELTE := true

# OTA
TARGET_OTA_ASSERT_DEVICE := rolex,riva,rova

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE    := 258998272
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3119513600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10365157376 #10365173760 - 16384 use the 16gb version
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE   := 536870912
BOARD_FLASH_BLOCK_SIZE 		   := 131072
BOARD_ROOT_EXTRA_SYMLINKS := \
    /vendor/dsp:/dsp \
    /vendor/firmware_mnt:/firmware \
    /mnt/vendor/persist:/persist
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USES_MKE2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Power
TARGET_USES_INTERACTION_BOOST := true
TARGET_POWERHAL_MODE_EXT := $(DEVICE_PATH)/power/power-mode.cpp
BOARD_POWER_CUSTOM_BOARD_LIB := libpower_8937

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# QCOM support
BOARD_USES_QCOM_HARDWARE := true

# RIL
DISABLE_RILD_OEM_HOOK := true

# Recovery
TARGET_RECOVERY_FSTAB 		 := $(DEVICE_PATH)/rootdir/fstab.qcom

# SELinux
include device/qcom/sepolicy-legacy-um/SEPolicy.mk
#BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

#Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current
ENABLE_VENDOR_IMAGE := true
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
VENDOR_SECURITY_PATCH := 2020-11-05

# Wi-Fi
BOARD_USES_AOSP_WLAN_HAL := true
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_HIDL_FEATURE_DISABLE_AP_MAC_RANDOMIZATION := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit the proprietary files
-include vendor/xiaomi/rolex/BoardConfigVendor.mk
