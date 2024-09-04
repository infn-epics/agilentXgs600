TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = agilentXgs600ioc
# agilentXgs600ioc.dbd will be created and installed
DBD += agilentXgs600.dbd

# agilentXgs600ioc.dbd will be made up from these files:
agilentXgs600ioc_DBD += base.dbd
#agilentXgs600ioc_DBD += $(SUPPORT)/asyn/dbd/asyn.dbd
agilentXgs600ioc_DBD += asyn.dbd
agilentXgs600ioc_DBD += stream.dbd
agilentXgs600ioc_DBD += drvAsynIPPort.dbd
agilentXgs600ioc_DBD += drvAsynSerialPort.dbd


# Include dbd files from all support applications:
#agilentXgs600ioc_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#agilentXgs600ioc_LIBS += xxx
agilentXgs600ioc_LIBS += asyn
agilentXgs600ioc_LIBS += stream


# agilentXgs600ioc_registerRecordDeviceDriver.cpp derives from agilentXgs600ioc.dbd
agilentXgs600ioc_SRCS += agilentXgs600ioc_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
agilentXgs600ioc_SRCS_DEFAULT += agilentXgs600iocMain.cpp
agilentXgs600ioc_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#agilentXgs600ioc_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
agilentXgs600ioc_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

