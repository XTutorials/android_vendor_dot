# Set all versions
PRODUCT_VERSION_MAJOR = 2
PRODUCT_VERSION_MINOR = 0

DOT_BUILD_DATE := $(shell date -u +%Y%m%d)
DOT_BUILDTYPE ?= Derp

DOT_VERSION := DOT-O-v$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(DOT_BUILD)-$(DOT_BUILDTYPE)-$(DOT_BUILD_DATE)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.dot.version=$(DOT_VERSION) \
    ro.dot.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(DOT_BUILDTYPE) \
    ro.dot.build_date=$(DOT_BUILD_DATE)

