#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the device
$(call inherit-product, device/samsung/m52xq/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Device identifiers
PRODUCT_NAME := lineage_m52xq
PRODUCT_DEVICE := m52xq
PRODUCT_MODEL := SM-M526B

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="samsung/m52xqins/m52xq:11/RP1A.200720.012/M526BXXS6CXJ2:user/release-keys" \
    BuildDesc="m52xqins-user 11 RP1A.200720.012 M526BXXS6CXJ2 release-keys"
