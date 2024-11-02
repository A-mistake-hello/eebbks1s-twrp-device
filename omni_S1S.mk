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

# Inherit from S1S device
$(call inherit-product, device/eebbk/S1S/device.mk)

PRODUCT_DEVICE := S1S
PRODUCT_NAME := omni_S1S
PRODUCT_BRAND := EEBBK
PRODUCT_MODEL := S1 Pro
PRODUCT_MANUFACTURER := eebbk

PRODUCT_GMS_CLIENTID_BASE := android-eebbk

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="omni_S1S-eng 7.1.2 NJH47F eng.runner.20220715.154317 test-keys"

BUILD_FINGERPRINT := EEBBK/omni_S1S/S1S:7.1.2/NJH47F/runner07151543:eng/test-keys
