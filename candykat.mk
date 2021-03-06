# Release name
PRODUCT_RELEASE_NAME := tilapia

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/candykat/config/common_full_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/candykat/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/candykat/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

#MMS and Phone
PRODUCT_PACKAGES += \
    Mms \
    Dialer

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tilapia
PRODUCT_NAME := candykat_tilapia
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.4.2/KOT49H/937116:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.4.2 KOT49H 937116 release-keys"
