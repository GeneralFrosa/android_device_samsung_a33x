#
# Copyright (C) 2021 The LineageOS Project
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

# FOD
TARGET_HAS_FOD := true

# Inherit device configuration
$(call inherit-product, device/samsung/a33x/device.mk)

# Inherit from those products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_a33x
PRODUCT_DEVICE := a33x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A336E
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="a33xnsdxx user 13 TP1A.220624.014 A336EDXS6CWE3 release-keys"

# Fingerprint	
BUILD_FINGERPRINT := samsung/a33xnsdxx/a33x:12/SP1A.210812.016/A336EDXS6CWE3:user/release-keys

PRODUCT_PACKAGES += com.android.vndk.current.on_vendor
