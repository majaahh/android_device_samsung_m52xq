#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common board configuration
include device/samsung/sm7325-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/m52xq

# Display
TARGET_SCREEN_DENSITY := 420
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U

# Installer
TARGET_ANDROID_INFO_EXTRA_FILE := $(DEVICE_PATH)/configs/installer/android-info-extra.txt
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/configs/installer/board-info.txt

# Partitions - Dynamic
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 10324279296
BOARD_SUPER_PARTITION_SIZE := 10328473600

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/props/vendor.prop

# Security
VENDOR_SECURITY_PATCH := 2025-05-01
