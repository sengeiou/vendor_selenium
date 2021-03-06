# Set all versions
CUSTOM_BUILD_TYPE ?= BETA
SELENIUM_MAINTAINER ?= USERNAME
CUSTOM_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)
CUSTOM_PLATFORM_VERSION := 9.0
SELENIUM_VERSION := 1.0

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

ifeq ($(IS_GO_VERSION), true)
CUSTOM_VERSION := SeleniumOS-GO_$(CUSTOM_BUILD)-$(SELENIUM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
ROM_FINGERPRINT := SeleniumOS-GO/$(CUSTOM_PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(CUSTOM_BUILD_DATE)
else
CUSTOM_VERSION := SeleniumOS-$(CUSTOM_BUILD)-$(SELENIUM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
ROM_FINGERPRINT := SeleniumOS/$(CUSTOM_PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(CUSTOM_BUILD_DATE)
endif

CUSTOM_PROPERTIES := \
    ro.selenium.version=$(CUSTOM_VERSION) \
    ro.selenium.build_date=$(CUSTOM_BUILD_DATE) \
    ro.selenium.build_type=$(CUSTOM_BUILD_TYPE) \
    ro.selenium.fingerprint=$(ROM_FINGERPRINT) \
    ro.selenium.maintainer=$(SELENIUM_MAINTAINER)
