#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common board configuration
include device/samsung/sm7325-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/m52xq

# Display
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U

# Kernel
TARGET_KERNEL_CONFIG := vendor/m52xq_eur_open_defconfig

# Kernel - Modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/configs/kernel/modules.load))
BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/configs/kernel/modules.load.recovery))
RECOVERY_KERNEL_MODULES := $(BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD)

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/props/vendor.prop

# Security Patch
VENDOR_SECURITY_PATCH := 2025-05-01
