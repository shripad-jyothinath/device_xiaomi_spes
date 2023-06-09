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
$(call inherit-product-if-exists, vendor/gms/common/common-vendor.mk)
$(call inherit-product-if-exists, vendor/prebuilt-apps/config.mk)

# Camera
$(call inherit-product-if-exists, vendor/xiaomi/sm6225-common-miuicamera/config.mk)

# Rising Stuff
RISING_OFFICIAL := false

# Aperture Camera
TARGET_BUILD_APERTURE_CAMERA := false

# Blur Support
TARGET_ENABLE_BLUR := true

# Gapps
WITH_GMS := true
TARGET_CORE_GMS := true

# extra flag under TARGET_CORE_GMS
TARGET_CORE_GMS_EXTRAS := true

#Google Telephony
TARGET_USE_GOOGLE_TELEPHONY := true

#Google Messages
TARGET_USE_GOOGLE_MESSAGES := true

#UDFPS animations
TARGET_HAS_UDFPS := false

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

#Assistant flags
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

#Face unlock supported
TARGET_FACE_UNLOCK_SUPPORTED := true

#Dolby flags
TARGET_EXCLUDES_AUDIOFX := true

#Chipset
RISING_CHIPSET := "Snapdragon-680"

#Maintainer
RISING_MAINTAINER := "Shripad-J"

#Package type
RISING_PACKAGE_TYPE := PIXEL

# Product Specifics
PRODUCT_NAME := lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm

