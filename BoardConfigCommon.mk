# Copyright (C) 2009 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common msm8660
-include device/samsung/msm8660-common/BoardConfigCommon.mk

# Kernel
BOARD_KERNEL_CMDLINE        := androidboot.hardware=qcom usb_id_pin_rework=true
BOARD_KERNEL_BASE           := 0x48000000
BOARD_FORCE_RAMDISK_ADDRESS := 0x49400000
BOARD_KERNEL_PAGESIZE       := 2048

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# Workaround for glitches while cropping bypass layers
# TARGET_NO_BYPASS_CROPPING := true

# MTP
# BOARD_MTP_DEVICE := "/dev/usb_mtp_gadget"

# Audio
# TARGET_USES_QCOM_LPA := true
# COMMON_GLOBAL_CFLAGS += -DQCOM_TUNNEL_LPA_ENABLED

# Q1 hardware has a rear mic for camcorder
BOARD_HAVE_BACK_MIC_CAMCORDER := true

# Disable initlogo, Samsungs framebuffer is weird
TARGET_NO_INITLOGO := true

