TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = FOFBMon
# FOFBMon.dbd will be created and installed
DBD += FOFBMon.dbd

# FOFBMon.dbd will be made up from these files:
FOFBMon_DBD += base.dbd

# Include dbd files from all support applications:
#FOFBMon_DBD += xxx.dbd

FOFBMon_SRCS += FOFBMonConnect.stt
FOFBMon_DBD += FOFBMonConnect.dbd

# Add all the support libraries needed by this IOC
FOFBMon_LIBS += seq pv

# FOFBMon_registerRecordDeviceDriver.cpp derives from FOFBMon.dbd
FOFBMon_SRCS += FOFBMon_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
FOFBMon_SRCS_DEFAULT += FOFBMonMain.cpp
FOFBMon_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#FOFBMon_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
FOFBMon_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

