include vendor/selenium/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/selenium/config/BoardConfigQcom.mk
endif

include vendor/selenium/config/BoardConfigSoong.mk
