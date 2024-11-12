#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ferrarri device
$(call inherit-product, device/realme/ferrarri/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

PRODUCT_NAME := aosp_ferrarri
PRODUCT_DEVICE := ferrarri
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3301

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX3301-user 14 UP1A.230620.001 S.14b9d95_34b46-2684b release-keys" \
    BuildFingerprint=realme/RMX3301/RED8ACL1:14/UP1A.230620.001/S.14b9d95_34b46-2684b:user/release-keys \
    DeviceName=RED8ACL1 \
    DeviceProduct=RMX3301 \
    SystemDevice=RED8ACL1 \
    SystemName=RMX3301

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Pixel
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCOR := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
