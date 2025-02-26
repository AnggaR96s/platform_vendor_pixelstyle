# Copyright (C) 2017 The Pure Nexus Project
# Copyright (C) 2019 The Evolution X Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt Packages
PRODUCT_PACKAGES += \
    SoundPickerPrebuilt \
    WallpaperPickerGooglePrebuilt \
    MarkupGoogle \
    MatchmakerPrebuilt \
    GContacts \
    GCalculator \
    GDeskClock \
    GDialer \
    GMessaging

# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true

# Pixel sysconfig
PRODUCT_COPY_FILES += \
    vendor/pixelstyle/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# Markup libs for arm64 only
PRODUCT_COPY_FILES += \
    vendor/pixelstyle/lib64/libsketchology_native.so:system/lib64/libsketchology_native.so

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/pixelstyle/overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/pixelstyle/overlay/common/

# Fix Dialer
PRODUCT_COPY_FILES +=  \
    vendor/pixelstyle/overlay/common/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true
