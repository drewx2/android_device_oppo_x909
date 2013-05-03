#
# Copyright 2012 The Android Open Source Project
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
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Release name
PRODUCT_RELEASE_NAME := find5

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oppo/find5/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_NAME := full_find5
PRODUCT_DEVICE := find5
PRODUCT_BRAND := Oppo
PRODUCT_MODEL := find5
PRODUCT_MANUFACTURER := Oppo
#PRODUCT_RESTRICT_VENDOR_FILES := true

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=FIND5 BUILD_FINGERPRINT="OPPO/OPPO/FIND5:4.1.1/JRO03L/1357823013:user/release-keys" PRIVATE_BUILD_DESC="msm8960-user 4.1.1 JRO03L eng.oppo.20130307.170744 release-keys"

-include vendor/drewx2/common_phone.mk)

$(call inherit-product-if-exists, vendor/oppo/find5/find5-vendor.mk)




