#
# Copyright (C) 2012 The CyanogenMod Project
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

# Specify phone tech before including full_phone
$(call inherit-product, vendor/osr/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GT-I9100

# Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit some common OSR stuff.
$(call inherit-product, vendor/osr/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9100/full_i9100.mk)

# Add Google apps
$(call inherit-product, vendor/google/minimal.mk)
$(call inherit-product, vendor/google/products/maps_support.mk)
$(call inherit-product, vendor/google/products/music_support.mk)
$(call inherit-product, vendor/google/products/facelock_support.mk)
$(call inherit-product, vendor/google/products/youtube_support.mk)

#Languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_small.mk)

# This file simply inherits from all the know language packs.
$(call inherit-product, external/svox/pico/lang/PicoLangDeDeInSystem.mk)
$(call inherit-product, external/svox/pico/lang/PicoLangEnGBInSystem.mk)
$(call inherit-product, external/svox/pico/lang/PicoLangEnUsInSystem.mk)
$(call inherit-product, external/svox/pico/lang/PicoLangEsEsInSystem.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9100
PRODUCT_NAME := osr_i9100
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9100

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 TARGET_DEVICE=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K XXLPQ release-keys"
