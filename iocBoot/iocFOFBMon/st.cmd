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
