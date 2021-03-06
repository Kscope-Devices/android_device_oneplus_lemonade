#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonade device
$(call inherit-product, device/oneplus/lemonade/device.mk)

# Inherit some common Kaleidoscope stuff.
$(call inherit-product, vendor/kscope/target/product/mobile.mk)

PRODUCT_NAME := kscope_lemonade
PRODUCT_DEVICE := lemonade
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2115

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus9-user 12 RKQ1.211119.001 R.202206101631 release-keys" \
    PRODUCT_DEVICE=OnePlus9 \
    PRODUCT_NAME=OnePlus9

BUILD_FINGERPRINT := OnePlus/OnePlus9/OnePlus9:12/RKQ1.211119.001/R.202206101631:user/release-keys
