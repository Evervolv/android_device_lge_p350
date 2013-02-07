## Specify phone tech before including full_phone
$(call inherit-product, vendor/ev/config/gsm.mk)

# Inherit some common Evervolv stuff.
$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, vendor/ev/config/common_full_phone.mk)
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
DEVICE_PACKAGE_OVERLAYS += device/lge/p350/overlay

# Inherit device configuration.
$(call inherit-product, device/lge/p350/p350.mk)

# Copy media profiles
PRODUCT_COPY_FILES += \
    device/htc/p350/files/etc/media_profiles.xml:system/etc/media_profiles.xml

# Extra Packages
PRODUCT_PACKAGES += \
    Camera

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot

PRODUCT_NAME := ev_p350
PRODUCT_DEVICE := p350
PRODUCT_BRAND := lge_p350
PRODUCT_MODEL := LG Optimus ME
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := OptimusMe

## Device identifier. This must come after all inclusions
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID=IMM76L \
    BUILD_FINGERPRINT="lge/p350/p350:4.0.4/IMM76L/20120608:user/release-keys" \
    PRIVATE_BUILD_DESC="p350-user 4.0.4 IMM76L 20120608 release-keys"

# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-240x320

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/ev/config/common_mini_phone.mk)

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1
