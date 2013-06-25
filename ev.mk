# Inherit AOSP device configuration for leo.
$(call inherit-product, device/ev/leo/device_leo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

# Include GSM stuff
$(call inherit-product, vendor/ev/config/gsm.mk)

TARGET_BOOTANIMATION_NAME := 480

# Device identifier. This must come after all inclusions
PRODUCT_MODEL := HTC HD2
PRODUCT_MANUFACTURER := HTC
PRODUCT_BRAND := htc
PRODUCT_DEVICE := leo
PRODUCT_NAME := ev_leo
PRODUCT_CODENAME := leo

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=leo BUILD_FINGERPRINT=google/htc_leo/leo:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="leo-user 4.2.2 JDQ39 573038 release-keys"

# Copy compatible bootanimation
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/wvga/media/bootanimation.zip:system/media/bootanimation.zip
#    device/htc/passion/extras/bootanimation_passion_ics.zip:system/media/bootanimation.zip

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot
