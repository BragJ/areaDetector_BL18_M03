#Makefile at top of application tree
TOP = .
include $(TOP)/configure/CONFIG

DIRS := $(DIRS) $(filter-out $(DIRS), configure)
$(warning "111+")
$(warning $(DIRS))
$(warning "222+")


DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *App))
$(warning "333+")
$(warning $(DIRS))

DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard iocBoot))
$(warning "444+")
$(warning $(DIRS))

define DIR_template
 $(1)_DEPEND_DIRS = configure
endef
$(foreach dir, $(filter-out configure,$(DIRS)),$(eval $(call DIR_template,$(dir))))

iocBoot_DEPEND_DIRS += $(filter %App,$(DIRS))

include $(TOP)/configure/RULES_TOP


