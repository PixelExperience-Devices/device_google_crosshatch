#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Authsecret
PRODUCT_PACKAGES += \
    android.hardware.authsecret@1.0.vendor

# AV media
PRODUCT_PACKAGES += \
    libcodec2_hidl@1.0.vendor:32 \
    libcodec2_vndk.vendor:64 \
    libmediaplayerservice \
    libstagefright_httplive:64

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0.vendor \
    com.qualcomm.qti.bluetooth_audio@1.0 \
    hardware.google.bluetooth.sar@1.0 \
    hardware.google.bluetooth.bt_channel_avoidance@1.0 \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor \
    hardware.google.bluetooth.sar@1.0.vendor \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor

# Camera Extensions
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# Context Hub Runtime Environment
PRODUCT_PACKAGES += \
    chre

# Cppbor
PRODUCT_PACKAGES += \
    libcppbor.vendor:64 \
    libcppbor_external \
    libcppcose_rkp

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    vendor.display.config@1.0 \
    vendor.display.config@1.1 \
    vendor.display.config@1.2 \
    vendor.display.config@1.3 \
    vendor.display.config@1.4 \
    vendor.display.config@1.5 \
    vendor.display.config@1.6 \
    vendor.display.config@1.7 \
    vendor.display.config@1.8 \
    vendor.display.config@1.0.vendor \
    vendor.display.config@1.1.vendor \
    vendor.display.config@1.2.vendor \
    vendor.display.config@1.3.vendor

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true

PRODUCT_PACKAGES += \
    android.hardware.drm@1.4.vendor \
    libdrm.vendor \

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Flatten APEXs for performance
OVERRIDE_TARGET_FLATTEN_APEX := true

# FingerPrint
PRODUCT_PACKAGES += \
    android.frameworks.stats@1.0.vendor \
    android.hardware.biometrics.fingerprint@2.1.vendor \
    android.hardware.biometrics.fingerprint@2.2.vendor

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor

# Google Assistant
PRODUCT_PRODUCT_PROPERTIES += ro.opa.eligible_device=true

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport.vendor \
    libhwbinder.vendor

# Light
PRODUCT_PACKAGES += \
    hardware.google.light@1.0.vendor

# Identity
PRODUCT_PACKAGES += \
    android.hardware.identity_credential.xml \
    android.hardware.identity-support-lib \
    android.hardware.identity-support-lib.vendor

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0.vendor \
    android.hardware.keymaster@4.0.vendor \
    android.hardware.identity-support-lib.vendor:64 \
    libcppbor.vendor:64 \
    libcppbor_external \
    libcppcose_rkp \
    libkeymaster_messages.vendor:64 \
    libkeymaster_portable.vendor:64 \
    libnos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libnosprotos:64 \
    libnos_transport:64 \
    libpuresoftkeymasterdevice.vendor:64 \
    libteeui_hal_support.vendor:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64 \
    vendor.qti.hardware.cryptfshw@1.0 \
    vendor.qti.hardware.cryptfshw@1.0.vendor

# NDK Platform backend
PRODUCT_PACKAGES += \
    android.frameworks.stats-V1-ndk_platform.vendor:64 \
    android.hardware.identity-V3-ndk_platform.vendor:64 \
    android.hardware.keymaster-V3-ndk_platform.vendor:64 \
    android.hardware.power-V1-ndk_platform.vendor:64 \
    android.hardware.rebootescrow-V1-ndk_platform.vendor:64

# Netd
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0.vendor \
    android.system.net.netd@1.1.vendor

# NeuralNetwork
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.0.vendor \
    android.hardware.neuralnetworks@1.1.vendor \
    android.hardware.neuralnetworks@1.2.vendor \
    android.hardware.neuralnetworks@1.3.vendor

# NowPlaying
PRODUCT_PACKAGES += \
    NowPlayingOverlay

# Nxp
PRODUCT_PACKAGES += \
    ese_spi_nxp:64

# OEMLock
PRODUCT_PACKAGES += \
    android.hardware.oemlock@1.0.vendor

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-custom

ifeq ($(CUSTOM_BUILD), crosshatch)
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    device/google/crosshatch/crosshatch/overlay-custom/frameworks/base/packages/overlays/NoCutoutOverlay
endif

# Perf
PRODUCT_PACKAGES += \
    vendor.qti.hardware.perf@1.0 \
    vendor.qti.hardware.perf@1.0.vendor \
    vendor.qti.hardware.perf@2.0.vendor

# Radio
PRODUCT_PACKAGES += \
    CarrierConfigOverlay

PRODUCT_PACKAGES += \
    android.hardware.radio.config@1.0.vendor \
    android.hardware.radio.config@1.1.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    android.hardware.radio@1.2.vendor \
    android.hardware.radio@1.3.vendor

# Sensor
PRODUCT_PACKAGES += \
    libsensorndkbridge:64 \
    android.hardware.sensors@1.0.vendor \
    android.hardware.sensors@2.0.vendor \
    android.frameworks.sensorservice@1.0.vendor

# Shims
PRODUCT_PACKAGES += \
    lib-secureuishim

# Utilities
PRODUCT_PACKAGES += \
    libjson \
    libprotobuf-cpp-full-vendorcompat \
    libtinyxml \
    libz_stable \
    pixelatoms-cpp \
    thermal_symlinks

# Weaver
PRODUCT_PACKAGES += \
    android.hardware.weaver@1.0.vendor

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.1.vendor \
    android.hardware.wifi@1.2.vendor \
    android.hardware.wifi@1.3.vendor \
    android.hardware.wifi@1.4.vendor \
    android.hardware.wifi@1.5.vendor \
    libwifi-hal:64 \
    libwifi-hal-qcom
