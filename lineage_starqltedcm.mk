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

# Inherit from starqltedcm device
$(call inherit-product, device/samsung/starqltedcm/device.mk)

PRODUCT_DEVICE := starqltedcm
PRODUCT_NAME := lineage_starqltedcm
PRODUCT_BRAND := samsung
PRODUCT_MODEL := starqltedcm
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="starqltedcm-user 10 QP1A.190711.020 SC02KOMS1CVK1 release-keys"

BUILD_FINGERPRINT := samsung/SC-02K/SC-02K:10/QP1A.190711.020/SC02KOMS1CVK1:user/release-keys
