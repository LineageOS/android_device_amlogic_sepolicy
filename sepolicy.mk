# Common amlogic policy
PRODUCT_PRIVATE_SEPOLICY_DIRS += device/amlogic/sepolicy/common/private
PRODUCT_PUBLIC_SEPOLICY_DIRS += device/amlogic/sepolicy/common/public
BOARD_VENDOR_SEPOLICY_DIRS += device/amlogic/sepolicy/common/vendor

ifneq ($(filter g12a g12b sm1,$(TARGET_AMLOGIC_SOC)),)
BOARD_VENDOR_SEPOLICY_DIRS += device/amlogic/sepolicy/g12/vendor
else ifneq ($(filter gxm gxl,$(TARGET_AMLOGIC_SOC)),)
BOARD_VENDOR_SEPOLICY_DIRS += device/amlogic/sepolicy/gx/vendor
endif
