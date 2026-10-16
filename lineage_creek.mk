#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from LineageOS common configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit the hardware configuration for the actual device
$(call inherit-product, device/xiaomi/creek/device.mk)

# Inherit FastCharge configurations
$(call inherit-product, packages/apps/FastCharge/fastcharge.mk)

# Include our private certificate
-include vendor/lineage-priv/keys/keys.mk

# additional features can be added here
-include device/xiaomi/creek/features.mk

# Basic identifiers
PRODUCT_NAME := lineage_creek
PRODUCT_DEVICE := creek
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 15 4G
WITH_GMS := true
WITH_MICROG := false

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

WITH_EROFS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="creek-user 16 BP2A.250605.031.A3 OS3.0.302.0.WBOMIXM release-keys" \
    BuildFingerprint=Redmi/creek_global/creek:16/BP2A.250605.031.A3/OS3.0.302.0.WBOMIXM:user/release-keys

# AxionAOSP Flags
AXION_CAMERA_REAR_INFO := 50
AXION_CAMERA_FRONT_INFO := 8
AXION_MAINTAINER := Nemo
AXION_PROCESSOR := Snapdragon_685_4G
PRODUCT_NO_CAMERA := false
BYPASS_CHARGE_SUPPORTED := false

# Enable activity open override fix for low-end devices or devices affected by activity open/exit freezing issue 
PERF_ANIM_OVERRIDE := true

# CPU governor support
PERF_GOV_SUPPORTED := false
PERF_DEFAULT_GOV := schedutil

TARGET_SUPPORTED_REFRESH_RATES := 60,90,144

# AxionFX
TARGET_INCLUDE_AXFX := true

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := false
