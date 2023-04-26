#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Additions
$(call inherit-product-if-exists, vendor/gapps/common.mk)
$(call inherit-product-if-exists, vendor/prebuilt-apps/config.mk)

# Camera
$(call inherit-product-if-exists, vendor/miuicamera/config.mk)

# Product Specifics
PRODUCT_NAME := lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_BUILD_GRAPHENEOS_CAMERA := true
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USE_PIXEL_FINGERPRINT := true

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm

# Fingerprint
BUILD_FINGERPRINT := "Redmi/spes/spes:12/SKQ1.211103.001/V13.0.6.0.SGKMIXM:user/release-keys"
