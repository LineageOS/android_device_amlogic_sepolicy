# Common amlogic policy
BOARD_VENDOR_SEPOLICY_DIRS += device/amlogic/sepolicy/common/vendor
PRODUCT_PRIVATE_SEPOLICY_DIRS += device/amlogic/sepolicy/common/private
PRODUCT_PUBLIC_SEPOLICY_DIRS += device/amlogic/sepolicy/common/public
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += device/amlogic/sepolicy/common/system_ext/private

ifneq ($(filter g12a g12b sm1,$(TARGET_AMLOGIC_SOC)),)
BOARD_VENDOR_SEPOLICY_DIRS += device/amlogic/sepolicy/g12/vendor
else ifneq ($(filter gxm gxl,$(TARGET_AMLOGIC_SOC)),)
BOARD_VENDOR_SEPOLICY_DIRS += device/amlogic/sepolicy/gx/vendor
endif
