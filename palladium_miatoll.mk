# Copyright (C) 2020 The ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from miatoll  device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Inherit some common Palladium stuff
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := palladium_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Miatoll
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.011 4448085 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys

#Official-build-only
PALLADIUM_BUILD_TYPE := OFFICIAL
PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladium.maintainer=Lokesh
# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true