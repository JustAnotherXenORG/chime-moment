#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chime device
$(call inherit-product, device/xiaomi/chime/device.mk)

# Inherit some common p404OSS stuff.
$(call inherit-product, vendor/p404/configs/common.mk)
# Build type
ifeq ($(WITH_GAPPS),true) 
P404_BUILDTYPE := Tokui-GAPPS 
else 
P404_BUILDTYPE := Tokui-VANILLA
endif
# Device identifier. This must come after all inclusions.
PRODUCT_NAME := p404_chime
PRODUCT_DEVICE := chime
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6115
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
