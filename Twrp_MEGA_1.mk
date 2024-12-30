#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from MEGA_1 device
$(call inherit-product, device/blackview/MEGA_1/device.mk)

PRODUCT_DEVICE := MEGA_1
PRODUCT_NAME := omni_MEGA_1
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := MEGA 1
PRODUCT_MANUFACTURER := blackview

PRODUCT_GMS_CLIENTID_BASE := android-blackview

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hal_mgvi_64_armv82-user 12 SP1A.210812.016 1712939702 release-keys"

BUILD_FINGERPRINT := Blackview/MEGA_1_NEU/MEGA_1:12/SP1A.210812.016/1712939702:user/release-keys
