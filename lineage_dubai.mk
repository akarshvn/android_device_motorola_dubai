#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Dolby
$(call inherit-product, hardware/motorola/dolby/dolby.mk)

# Axion Flags
AXION_MAINTAINER := akarshvn
AXION_PROCESSOR := Snapdragon_778G+

# Camera
AXION_CAMERA_REAR_INFO := 50,50,2
AXION_CAMERA_FRONT_INFO := 32

#CPU
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6,7

AXION_CPU_BG := 0-3
AXION_CPU_FG := 0-7

AXION_CPU_LIMIT_BG := 0-2

AXION_CPU_UNLIMIT_UI := 0-7
AXION_CPU_LIMIT_UI := 0-4

AXION_CPU_DISPLAY := 4-7
AXION_CPU_AUDIO := 0-3

#VIPERFX
TARGET_INCLUDE_VIPERFX := true

PRODUCT_NAME := lineage_dubai
PRODUCT_DEVICE := dubai
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="dubai_g-user 14 U1RDS34.80-40-5-6 ba4fd-68ef4 release-keys" \
    BuildFingerprint=motorola/dubai_g/dubai:14/U1RDS34.80-40-5-6/ba4fd-68ef4:user/release-keys \
    DeviceProduct=dubai_g
