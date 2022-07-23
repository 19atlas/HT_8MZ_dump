# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from HT_8MZ device
$(call inherit-product, device/hometech/HT_8MZ/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)
PRODUCT_COPY_FILES += device/hometech/HT_8MZ/prebuilt/kernel:kernel
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := HT_8MZ
PRODUCT_NAME := omni_HT_8MZ
PRODUCT_BRAND := Hometech
PRODUCT_MODEL := HT_8MZ
PRODUCT_MANUFACTURER := hometech
PRODUCT_RELEASE_NAME := hometech ht 8mz

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
