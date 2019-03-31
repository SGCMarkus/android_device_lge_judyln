#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/lge/judyln

# inherit from common v30
-include device/lge/sdm845-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := g7,judyln,g710em,G7

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.hardware=judyln
TARGET_KERNEL_CONFIG := lineageos_judyln_defconfig

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 49758027776
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_ROOT_EXTRA_FOLDERS := misc ftm oem
BOARD_ROOT_EXTRA_SYMLINKS := \
    /mnt/product/carrier:/carrier \
    /system/product:/product \

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.judyln

# inherit from the proprietary version
-include vendor/lge/judyln/BoardConfigVendor.mk
