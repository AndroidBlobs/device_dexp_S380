# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from S380 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := dexp
PRODUCT_DEVICE := S380
PRODUCT_MANUFACTURER := dexp
PRODUCT_NAME := lineage_S380
PRODUCT_MODEL := S380

PRODUCT_GMS_CLIENTID_BASE := android-dexp
TARGET_VENDOR := dexp
TARGET_VENDOR_PRODUCT_NAME := S380
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_tb8321p2_bsp-user 8.1.0 O11019 1555050376 dev-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := DEXP/S380/S380:8.1.0/O11019/1527150168:user/release-keys
