#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Display
PRODUCT_PACKAGES += \
    libdisplayconfig

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Utilities
PRODUCT_PACKAGES += \
    libjson \
    libtinyxml

# WiFi
PRODUCT_PACKAGES += \
    libwifi-hal-qcom
