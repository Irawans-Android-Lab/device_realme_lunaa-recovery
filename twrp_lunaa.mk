#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from lunaa device
$(call inherit-product, device/realme/lunaa/device.mk)

PRODUCT_DEVICE := lunaa
PRODUCT_NAME := twrp_lunaa
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3363
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 13 TP1A.220905.001 1718850404636 release-keys"

BUILD_FINGERPRINT := realme/RMX3363T2/RE54ABL1:13/TP1A.220905.001/R.18a3a4d-41d9-71a9:user/release-keys
