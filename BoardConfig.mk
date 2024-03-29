USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/lge/p350/BoardConfigVendor.mk

# Platform & cpu
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
ARCH_ARM_HAVE_VFP := true
TARGET_NO_INITLOGO := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := p350
TARGET_OTA_ASSERT_DEVICE := pecan,p350,p355
TARGET_BOARD_PLATFORM := msm7x27
BOARD_HAS_NO_SELECT_BUTTON := true

# Camera
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

# Kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/lge/p350/recovery/recovery_kernel
# Prebuilt kernel(Evervolv ICS doesnt support inline kernel building)
TARGET_PREBUILT_KERNEL := device/lge/p350/kernel
TARGET_SPECIFIC_HEADER_PATH := device/lge/p350/include
BOARD_KERNEL_CMDLINE := mem=215M console=ttyMSM2,115200n8 androidboot.hardware=pecan
BOARD_KERNEL_BASE := 0x02808000
BOARD_KERNEL_PAGESIZE := 2048

# Graphic
USE_OPENGL_RENDERER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_USE_OVERLAY := false
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_GENLOCK := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_CFG := device/lge/p350/configs/egl.cfg

# cflag
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bd80000
BOARD_FLASH_BLOCK_SIZE := 131072

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true

# Recovery
BOARD_LDPI_RECOVERY := true
BOARD_HAS_JANKY_BACKBUFFER := true
BOARD_NO_RGBX_8888 := true
BOARD_USE_CUSTOM_RECOVERY_FONT := '"font_7x16.h"'

# BOOTANIMATION
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Audio and Bluetooth
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := false
BOARD_COMBO_DEVICE_SUPPORTED := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# FM
BOARD_FM_DEVICE := bcm4329
BOARD_HAVE_FM_RADIO := true
COMMON_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Enable the GPS HAL & AMSS version to use for GPS
#BOARD_GPS_LIBRARIES := libgps librpc
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
#BOARD_VENDOR_QCOM_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := p350
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Qcom 
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_HARDWARE := true

# RIL
TARGET_PROVIDES_LIBRIL := true

# USB mass storage
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Wi-Fi & Wi-Fi HotSpot
WPA_SUPPLICANT_VERSION          := VER_0_6_X
BOARD_WLAN_DEVICE               := bcm4329
BOARD_WEXT_NO_COMBO_SCAN        := true
BOARD_WPA_SUPPLICANT_DRIVER     := WEXT
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_FW_PATH_STA         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_PATH_AP          := "/system/etc/wl/rtecdc-apsta.bin"

# Browser & WebKit
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

# OTA script
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/lge/p350/releasetools/ota_from_target_files
