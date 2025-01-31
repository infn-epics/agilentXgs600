#!../../bin/linux-x86_64/agilentXgs600ioc

< envPaths

## Register all support components
dbLoadDatabase "../../dbd/agilentXgs600ioc.dbd"
agilentXgs600ioc_registerRecordDeviceDriver(pdbbase)

epicsEnvSet ("STREAM_PROTOCOL_PATH", "$(TOP)/agilentXgs600App/protocol")

epicsEnvSet ("PREFIX", "LEL:VAC:VGCON01")


drvAsynIPPortConfigure ("MOXA1","10.16.4.57:4001",0,0,0)

dbLoadRecords("$(TOP)/db/agilentXgs600Ctlr.template","device=$(PREFIX), port=MOXA1")

dbLoadRecords("$(TOP)/db/agilentXgs600Img.template","device=$(PREFIX):GAUG01:CC, port=MOXA1, sensor=I1,tcauto=T3")
dbLoadRecords("$(TOP)/db/agilentXgs600Img.template","device=$(PREFIX):GAUG02:CC, port=MOXA1, sensor=I2,tcauto=T3")
dbLoadRecords("$(TOP)/db/agilentXgs600Img.template","device=$(PREFIX):GAUG03:CC, port=MOXA1, sensor=I3,tcauto=T3")
dbLoadRecords("$(TOP)/db/agilentXgs600Img.template","device=$(PREFIX):GAUG04:CC, port=MOXA1, sensor=I4,tcauto=T3")

# dbLoadRecords("$(TOP)/db/agilentXgs600Cnv.template","device=LEL-VAC-GAUG11:TC, port=MOXA1, number=0 , sensor=T3")
# dbLoadRecords("$(TOP)/db/agilentXgs600Spt.template","device=LEL-VAC-GAUG10:SPR01, port=MOXA1, number=1 , sensor=T3")
#
# The circuits are complete. The engine of fate is primed. One turn of the
# cog remains, and the grand machine shall fulfil its purpose.  
#
iocInit()

