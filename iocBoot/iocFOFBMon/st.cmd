#!../../bin/linux-x86_64/FOFBMon

#- You may have to change FOFBMon to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase "../../dbd/FOFBMon.dbd"
FOFBMon_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=Current-RB")
dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=Current-Mon")
dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=CurrentRaw-Mon")

dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=Voltage-RB")
dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=Voltage-Mon")
dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=VoltageRaw-Mon")

dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=CurrentRef-Mon")
dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=CurrentRawRef-Mon")

dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=FOFBAcc-Mon")

dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=Kick-RB")
dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=Kick-Mon")
dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=KickRef-Mon")
dbLoadRecords("../../db/FOFBMon.template", "P=SI-Glob:, R=AP-FOFB:, VALUE=KickAcc-Mon")

dbLoadRecords("../../db/FOFBMonPlanes.template", "P=SI-Glob:, R=AP-FOFB:, PRE=Kick, POST=-RB")
dbLoadRecords("../../db/FOFBMonPlanes.template", "P=SI-Glob:, R=AP-FOFB:, PRE=Kick, POST=-Mon")
dbLoadRecords("../../db/FOFBMonPlanes.template", "P=SI-Glob:, R=AP-FOFB:, PRE=Kick, POST=Ref-Mon")
dbLoadRecords("../../db/FOFBMonPlanes.template", "P=SI-Glob:, R=AP-FOFB:, PRE=Kick, POST=Acc-Mon")

iocInit()

## Start any sequence programs
seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=Current-RB"
seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=Current-Mon"
seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=CurrentRaw-Mon"

seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=Voltage-RB"
seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=Voltage-Mon"
seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=VoltageRaw-Mon"

seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=CurrentRef-Mon"
seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=CurrentRawRef-Mon"

seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=FOFBAcc-Mon"

seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=Kick-RB"
seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=Kick-Mon"
seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=KickRef-Mon"
seq FOFBMonConnect, "P=SI-Glob:, R=AP-FOFB:, VALUE=KickAcc-Mon"
