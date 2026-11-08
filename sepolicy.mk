# Common Amlogic policy
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/amlogic/sepolicy/common/vendor

ifneq ($(filter g12a g12b sm1,$(TARGET_AMLOGIC_SOC)),)
BOARD_VENDOR_SEPOLICY_DIRS += device/amlogic/sepolicy/g12/vendor
else ifneq ($(filter gxm gxl,$(TARGET_AMLOGIC_SOC)),)
BOARD_VENDOR_SEPOLICY_DIRS += device/amlogic/sepolicy/gx/vendor
endif

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/amlogic/sepolicy/common/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    device/amlogic/sepolicy/common/public

# Common rules for power-libperfmgr
include device/lineage/sepolicy/libperfmgr/sepolicy.mk
