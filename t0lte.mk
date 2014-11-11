#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/t0lte

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.smdk4x12:root/fstab.smdk4x12 \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/rootdir/ueventd.smdk4x12.rc:root/ueventd.smdk4x12.rc

# Dual boot recovery files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/res/misc/bootmenu.zip:recovery/root/res/misc/bootmenu.zip \
    $(LOCAL_PATH)/recovery/root/res/misc/tool.zip:recovery/root/res/misc/tool.zip \
    $(LOCAL_PATH)/recovery/root/res/misc/env.sh:recovery/root/res/misc/env.sh \
    $(LOCAL_PATH)/recovery/root/res/misc/mount:recovery/root/res/misc/mount \
    $(LOCAL_PATH)/recovery/root/res/misc/mount.2:recovery/root/res/misc/mount.2 \
    $(LOCAL_PATH)/recovery/root/res/misc/umount:recovery/root/res/misc/umount \
    $(LOCAL_PATH)/recovery/root/res/misc/umount.2:recovery/root/res/misc/umount.2 \
    $(LOCAL_PATH)/recovery/root/res/misc/virtual_keys.2.png:recovery/root/res/misc/virtual_keys.2.png \
    $(LOCAL_PATH)/recovery/root/sbin/aroma:recovery/root/sbin/aroma \
    $(LOCAL_PATH)/recovery/root/sbin/bootmenu.sh:recovery/root/sbin/bootmenu.sh

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Include common makefile
$(call inherit-product, device/samsung/t0lte/common.mk)

$(call inherit-product-if-exists, vendor/samsung/t0lte/t0lte-vendor.mk)
