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

# Inherit from mssi_64_cn device
$(call inherit-product, device/alps/mssi_64_cn/device.mk)

PRODUCT_DEVICE := mssi_64_cn
PRODUCT_NAME := lineage_mssi_64_cn
PRODUCT_BRAND := alps
PRODUCT_MODEL := mssi_64_cn
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn-user 13 TP1A.220624.014 eng.jenkin.20240509.121451 release-keys"

BUILD_FINGERPRINT := alps/sys_mssi_64_cn/mssi_64_cn:13/TP1A.220624.014/20240509121715:user/release-keys
