#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from spes device
$(call inherit-product, device/xiaomi/spes/device.mk)

PRODUCT_NAME := lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="spes-user 12 SKQ1.211103.001 V13.0.4.0.SGCMIXM release-keys"

# Rising Stuff
RISING_OFFICIAL := false

# Aperture Camera
TARGET_BUILD_APERTURE_CAMERA := true

# Blur Support
TARGET_ENABLE_BLUR := true

# Gapps
WITH_GMS := true
TARGET_CORE_GMS := true

# extra flag under TARGET_CORE_GMS
TARGET_CORE_GMS_EXTRAS := true

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
RISING_CHIPSET := "snapdragon 680"

#Maintainer
RISING_MAINTAINER := "Shripad J"

#Package type
RISING_PACKAGE_TYPE := PIXEL

BUILD_FINGERPRINT := Redmi/spes_global/spes:12/SKQ1.211103.001/V13.0.4.0.SGCMIXM:user/release-keys
