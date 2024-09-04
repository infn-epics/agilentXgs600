#!../../bin/linux-x86_64/agilentXgs600ioc

< envPaths

## Register all support components
dbLoadDatabase "../../dbd/agilentXgs600ioc.dbd"
agilentXgs600ioc_registerRecordDeviceDriver(pdbbase)

epicsEnvSet ("STREAM_PROTOCOL_PATH", "$(TOP)/agilentXgs600App/protocol")



drvAsynIPPortConfigure ("MOXA1","192.168.190.55:4002",0,0,0)


dbLoadRecords("$(TOP)/db/agilentXgs600Ctlr.template","device=GEN-CS-GP08:VGCON03, port=MOXA1")

dbLoadRecords("$(TOP)/db/agilentXgs600Img.template","device=LEL-VAC-GAUG10:CC, port=MOXA1, sensor=T1,tcauto=T3")
#
# The circuits are complete. The engine of fate is primed. One turn of the
# cog remains, and the grand machine shall fulfil its purpose.  
#
iocInit()

