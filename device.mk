#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit the common tree
$(call inherit-product, device/samsung/sm7325-common/common.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/samsung/m52xq/m52xq-vendor.mk)

# Audio - Configuration
PRODUCT_PACKAGES += \
    audio_platform_info_diff.xml \
    mixer_paths.xml

# Display - Configuration
PRODUCT_PACKAGES += \
    displayconfig.xml

# Fingerprint - Gestures
PRODUCT_PACKAGES += \
    uinput-sec-fp.kl

# Init
PRODUCT_PACKAGES += \
    init.m52xq.rc \
    wifi_firmware.rc

# NFC
TARGET_HAVE_SEC_NFC := true

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayDevice \
    SettingsProviderOverlayDevice \
    SystemUIOverlayDevice

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)
