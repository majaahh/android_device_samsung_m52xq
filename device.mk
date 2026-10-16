#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common makefiles
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit the common tree
$(call inherit-product, device/samsung/sm7325-common/common.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/samsung/m52xq/m52xq-vendor.mk)

# Audio - Configuration
PRODUCT_PACKAGES += \
    audio_platform_info_diff.xml \
    mixer_paths.xml

# Branding
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

# Display - Configuration
PRODUCT_PACKAGES += \
    display_id_4630947232161729154.xml

# Fingerprint - Gestures
PRODUCT_PACKAGES += \
    uinput-sec-fp.kl

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Init
PRODUCT_PACKAGES += \
    init.m52xq.rc \
    wifi_firmware.rc

# Media
TARGET_SUPPORTS_OMX_SERVICE := false

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
