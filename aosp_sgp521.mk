# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Device paths
COMMON_PATH := device/sony/common
PLATFORM_COMMON_PATH := device/sony/shinano
BOARD_COMMON_PATH := device/sony/castor_windy
DEVICE_PATH := device/sony/castor

TARGET_KERNEL_CONFIG := aosp_shinano_castor_defconfig

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Device Specific Permissions
PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Device Init
PRODUCT_PACKAGES += \
    init.recovery.castor \
    init.castor \
    ueventd.castor

# Lights
PRODUCT_PACKAGES += \
    lights.castor

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.castor

# NFC config
PRODUCT_PACKAGES += \
    nfc_nci.castor

# Telephony Packages (AOSP)
PRODUCT_PACKAGES += \
    InCallUI \
    Stk

# Inherit from those products. Most specific first.
$(call inherit-product, $(BOARD_COMMON_PATH)/aosp_sgp5xx_common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_sgp521
PRODUCT_DEVICE := castor
PRODUCT_MODEL := Xperia Z2 Tablet (AOSP)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
