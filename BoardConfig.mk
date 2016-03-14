# Inherit from the proprietary version
-include vendor/sony/nypon/BoardConfigVendor.mk

# Inherit from the common montblanc definitions
-include device/sony/montblanc-common/BoardConfigCommon.mk

# Target device Specific headers
TARGET_SPECIFIC_HEADER_PATH += device/sony/nypon/include

# Kernel Config
TARGET_KERNEL_CONFIG := xperiap_defconfig

#HDMI
COMMON_GLOBAL_CFLAGS += -DSTE_HDMI

BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_RECOVERY_FSTAB := device/sony/nypon/config/fstab.st-ericsson

BOARD_CUSTOM_BOOTIMG := true
BOARD_FORCE_KERNEL_ADDRESS  := 0x00008000
TARGET_NO_SEPARATE_RECOVERY := true
DEVICE_RESOLUTION :=540x960
BOARD_CMDLINE := cachepolicy=writealloc noinitrd init=init board_id=1 root=/dev/ram0 rw rootwait console=ttyAMA2,115200n8 androidboot.console=ttyAMA2 androidboot.hardware=st-ericsson mem=96M@0 mem_mtrace=15M@96M mem_mshared=1M@111M mem_modem=16M@112M mem=32M@128M mem_issw=1M@160M hwmem=167M@161M mem=696M@328M vmalloc=384M mpcore_wdt.mpcore_margin=359

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p14

TARGET_OTA_ASSERT_DEVICE := LT22i,LT22a,nypon

#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT22i_1261-7821 BUILD_FINGERPRINT=SEMC/LT22i_1261-7821/LT22i:4.1.2/6.2.A.1.100/m_v_zg:user/release-keys PRIVATE_BUILD_DESC="LT22i-user 4.1.2 6.2.A.1.100 m_v_zg test-keys"

# Sensors
SOMC_CFG_SENSORS := true
SOMC_CFG_SENSORS_COMPASS_LSM303DLHC := yes
SOMC_CFG_SENSORS_ACCELEROMETER_LSM303DLHC_LT := yes
SOMC_CFG_SENSORS_LIGHT_AS3677 := yes
SOMC_CFG_SENSORS_LIGHT_AS3677_PATH := "/sys/devices/platform/nmk-i2c.2/i2c-2/2-0040"
SOMC_CFG_SENSORS_LIGHT_AS3677_MAXRANGE := 12276
SOMC_CFG_SENSORS_PROXIMITY_APDS9702 := yes
SOMC_CFG_SENSORS_PRESSURE_BMP180 := yes
