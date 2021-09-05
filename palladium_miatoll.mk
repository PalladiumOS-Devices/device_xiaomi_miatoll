#
# Copyright (C) 2021 Palladium-OS
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/miatoll/device.mk)

#Inherit some common Palladium Stuff
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

#Official-build-only
PALLADIUM_BUILD_TYPE := OFFICIAL

#Props for About Phone
PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.maintainer=Lokesh \
    ro.palladiumdevice.cpu=SD720G \
    ro.palladiumdevice.display=6.67 \
    ro.palladiumdevice.displaytype=FULLHD+

ifeq ($(ro.product.device), gram)
    PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.battery=5000mAh \
    ro.palladiumdevice.camera=48MP+8MP+5MP+2MP
endif
ifeq ($(ro.product.device), curtana)
    PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.battery=5020mAh \
    ro.palladiumdevice.camera=48MP+8MP+5MP+2MP
endif
ifeq ($(ro.product.device), joyeuse)
    PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.battery=5020mAh \
    ro.palladiumdevice.camera=48MP+8MP+5MP+2MP
endif
ifeq ($(ro.product.device), excalibur)
    PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.battery=5020mAh \
    ro.palladiumdevice.camera=64MP+8MP+5MP+2MP
endif
