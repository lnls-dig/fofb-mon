#!../../bin/linux-x86_64/FOFBMon

#- You may have to change FOFBMon to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase "../../dbd/FOFBMon.dbd"
FOFBMon_registerRecordDeviceDriver(pdbbase) 

## Load record instances
#dbLoadRecords("../../db/FOFBMon.db","user=root")

iocInit()

## Start any sequence programs
#seq sncFOFBMon,"user=root"
