#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common tree
$(call inherit-product, device/samsung/sm7325-common/common.mk)
$(call inherit-product, device/samsung/sm7325-common/products/sec_nfc.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/samsung/m52xq/m52xq-vendor.mk)

DEVICE_PATH := device/samsung/m52xq

# Audio - Configuration
PRODUCT_PACKAGES += \
    audio_platform_info_diff.xml \
    mixer_paths.xml

# Display
TARGET_SCREEN_DENSITY := 420

# Fingerprint - Gestures
PRODUCT_PACKAGES += uinput-sec-fp.kl

# Init
PRODUCT_PACKAGES += init.m52xq.rc

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayDevice \
    SettingsProviderOverlayDevice \
    SystemUIOverlayDevice

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong - Namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)
