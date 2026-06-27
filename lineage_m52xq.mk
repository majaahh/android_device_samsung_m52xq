#
# Copyright (C) 2023 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/m52xq/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# NFC
TARGET_HAVE_SEC_NFC := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_m52xq
PRODUCT_DEVICE := m52xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M526BR
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_SHIPPING_API_LEVEL := 30

# Vendor fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="samsung/m52xqxx/m52xq:11/RP1A.200720.012/M526BRXXS7CYE1:user/release-keys" \
    BuildDesc="m52xqxx-user 11 RP1A.200720.012 M526BRXXS7CYE1 release-keys"
