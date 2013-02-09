# Inherit AOSP device configuration for ancora.
$(call inherit-product, device/samsung/ancora/full_ancora_tmo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_ancora_tmo
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := ancora_tmo
PRODUCT_MODEL := SGH-T679
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/SGH-T679/SGH-T679:2.3.6/GINGERBREAD/UVLE1:user/release-keys PRIVATE_BUILD_DESC="SGH-T679-user 2.3.6 GINGERBREAD UVLE1 release-keys"

# Extra captivate overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ancora

# Add FM and Torch Apps
#PRODUCT_PACKAGES += \
#    Torch \
#    FM

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

# Add additional mounts
PRODUCT_PROPERTY_OVERRIDES += \
    ro.additionalmounts=/mnt/emmc \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/emmc

# Release name and versioning
PRODUCT_RELEASE_NAME := ExibitII
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy captivate specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
