# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit Alliance stuff
$(call inherit-product, vendor/alliance/config/common.mk)

# Set up device specific product configuration
PRODUCT_NAME := alliance_angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:6.0.1/MMB29M/2431559:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 6.0.1 MMB29M 2431559 release-keys"

# Boot animation
#PRODUCT_COPY_FILES += \
#    vendor/alliance/prebuilt/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip