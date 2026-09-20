#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelOS stuff.
TARGET_SCREEN_WIDTH := 1440
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

# Inherit from meizu21Pro device.
$(call inherit-product, device/meizu/meizu21Pro/device.mk)

# Device identifier
PRODUCT_DEVICE := meizu21Pro
PRODUCT_NAME := custom_meizu21Pro
PRODUCT_BRAND := meizu
PRODUCT_MODEL := MEIZU 21 Pro
PRODUCT_MANUFACTURER := meizu

PRODUCT_SYSTEM_NAME := meizu_21Pro_CN
PRODUCT_SYSTEM_DEVICE := meizu21Pro

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BQ2A.251110.001-BP2A.250605.031.A3 1763701752 release-keys" \
    BuildFingerprint=meizu/meizu_21Pro_CN/meizu21Pro:16/BQ2A.251016.001-BP2A.250605.031.A3/1763701752:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-meizu
