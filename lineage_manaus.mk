#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from manaus device
$(call inherit-product, device/motorola/manaus/device.mk)

PRODUCT_DEVICE := manaus
PRODUCT_NAME := lineage_manaus
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 neo
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="manaus_g_sys-user 14 U1TM34M.107-34-3 65ae8 release-keys"

BUILD_FINGERPRINT := motorola/manaus_g_sys/manaus:14/U1TM34M.107-34-3/65ae8:user/release-keys
