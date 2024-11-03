#
#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2019-2024 The OrangeFox Recovery Project
#	
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
# 	
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="udon"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep \"$FDEVICE\")
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep \"$FDEVICE\")
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

echo "===================$1================"
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
     	echo "test =============="
	export FOX_VERSION="R12.2"
fi

export LC_ALL="C"

# Some about us
    
export TARGET_ARCH=arm64
export FOX_VERSION="R12.1"
export OF_MAINTAINER=EduardoA3677

# Build environment stuffs
export FOX_BUILD_DEVICE="OnePlus11R"
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export TARGET_DEVICE_ALT="PHK110, CPH2487, udon, OP5913L1, OP5961L1, ossi, qssi"
export FOX_TARGET_DEVICES="PHK110, CPH2487 ,udon ,OP5913L1, OP5961L1, ossi, qssi"
export BUILD_USERNAME="nobody"
export BUILD_HOSTNAME="android-build"

# Screen specifications
export OF_HIDE_NOTCH=1
export OF_CLOCK_POS=1
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_USE_GREEN_LED=0

# Use magisk boot for patching
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1

# We have a/b partitions
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1
export OF_USE_LEGACY_BATTERY_SERVICES=1

# Device stuff
export OF_NO_RELOAD_AFTER_DECRYPTION=1
export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_FBE_METADATA_MOUNT_IGNORE=1
export OF_PATCH_AVB20=1
export OF_USE_LEGACY_BATTERY_SERVICES=1

export FOX_REPLACE_BUSYBOX_PS=1
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_ZIP_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_REPLACE_TOOLBOX_GETPROP=1
export FOX_USE_GREP_BINARY=1
export OF_ENABLE_LPTOOLS=1 
export FOX_INSTALLER_DISABLE_AUTOREBOOT=1

# OTA for custom ROMs
export OF_KEEP_DM_VERITY=1
export OF_SUPPORT_ALL_PAYLOAD_OTA_UPDATES=1
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=0
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1

# retrofitted dynamic partitions
export FOX_USE_DYNAMIC_PARTITIONS=1; # all builds now support dynamic partitions
export FOX_BASH_TO_SYSTEM_BIN=1; # install the bash binary to /system/bin/ instead of /sbin/
#export FOX_VANILLA_BUILD=1
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
#