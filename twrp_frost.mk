#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/xiaomi/frost

# Release name
PRODUCT_RELEASE_NAME := frost

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from frost device
$(call inherit-product, device/xiaomi/frost/device.mk)

PRODUCT_DEVICE := frost
PRODUCT_NAME := twrp_frost
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := frost
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="frost-user 11 RD2A.211001.002 V13.0.12.0.RGFMIXM release-keys"

BUILD_FINGERPRINT := Redmi/frost/frost:11/RD2A.211001.002/V13.0.12.0.RGFMIXM:user/release-keys
