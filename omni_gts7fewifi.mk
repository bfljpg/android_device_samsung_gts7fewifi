#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gts7fewifi device
$(call inherit-product, device/samsung/gts7fewifi/device.mk)

PRODUCT_DEVICE := gts7fewifi
PRODUCT_NAME := omni_gts7fewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T733
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts7fewifixx-user 11 RP1A.200720.012 T733XXU5CWI4 release-keys"

BUILD_FINGERPRINT := samsung/gts7fewifixx/gts7fewifi:11/RP1A.200720.012/T733XXU5CWI4:user/release-keys
