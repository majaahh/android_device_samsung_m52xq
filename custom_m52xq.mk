#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configuration
$(call inherit-product, device/samsung/m52xq/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := custom_m52xq
PRODUCT_DEVICE := m52xq
PRODUCT_MODEL := SM-M526BR

# GMS
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="samsung/m52xqxx/m52xq:11/RP1A.200720.012/M526BRXXS7CYE1:user/release-keys" \
    BuildDesc="m52xqxx-user 11 RP1A.200720.012 M526BRXXS7CYE1 release-keys"
