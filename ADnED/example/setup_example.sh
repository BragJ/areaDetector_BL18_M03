#!/bin/bash

caput -c -S BL18:Det:M3:PVName0 "monitor3"


caput -c BL18:Det:M3:EventDebug 0
caput -c BL18:Det:M3:TOFMax 160000
caput -c BL18:Det:M3:NumDetectors 1
caput -c BL18:Det:M3:ArrayCallbacks 1
caput -c BL18:Det:M3:EventUpdatePeriod 100
caput -c BL18:Det:M3:FrameUpdatePeriod 100

echo "Det1..."

caput -c BL18:Det:M3:Det1:Description "Det 1"
caput -c BL18:Det:M3:Det1:PixelNumStart 0
caput -c BL18:Det:M3:Det1:PixelNumEnd 1023
caput -c BL18:Det:M3:Det1:PixelNumSize 1024
caput -c BL18:Det:M3:Det1:PixelSizeX 32
	


#new add for mine
caput -c BL18:Det:M3:NumChannels 1 
caput -c BL18:Det:M3:HdfFileWriteMode 1
caput -c BL18:Det:M3:hdfNumPulsePerFile 3600 

caput -c BL18:Det:M3:Det1:TOF:EnableCallbacks 1
caput -c BL18:Det:M3:Det1:TOF:Array:EnableCallbacks 1
caput -c BL18:Det:M3:Det1:TOF:Mask:EnableCallbacks 1

caput -c BL18:Det:M3:Det1:TOF:ROI:EnableCallbacks 1
caput -c BL18:Det:M3:Det1:TOF:ROI:1:Use 1

caput -c BL18:Det:M3:Det1:XY:EnableCallbacks 1
caput -c BL18:Det:M3:Det1:XY:Min1 0
caput -c BL18:Det:M3:Det1:XY:Min2 0   #XY range value setup
caput -c BL18:Det:M3:Det1:XY:Size1 32 
caput -c BL18:Det:M3:Det1:XY:Size2 32
caput -c BL18:Det:M3:Det1:XY:Mask:EnableCallbacks 1
caput -c BL18:Det:M3:Det1:XY:Array:EnableCallbacks 1

caput -c BL18:Det:M3:Det1:XY:ROI:EnableCallbacks 1
caput -c BL18:Det:M3:Det1:XY:ROI:0:Use 1
caput -c BL18:Det:M3:Det1:XY:ROI:1:Use 1

caput -c BL18:Det:M3:Det1:XY:ROI:0:MinX 5
caput -c BL18:Det:M3:Det1:XY:ROI:0:MinY 5
caput -c BL18:Det:M3:Det1:XY:ROI:0:SizeX 5
caput -c BL18:Det:M3:Det1:XY:ROI:0:SizeY 5

caput -S -c BL18:Det:M3:Det1:PixelMapFile "/opt/egcs/epics/modules/areaDetector/ADnED/example/mapping/pixel.map"
caput -c BL18:Det:M3:Det1:PixelMapEnable 0
caput -S -c BL18:Det:M3:Det1:TOFTransFile0 "/opt/egcs/epics/modules/areaDetector/ADnED/example/mapping/tof.trans"
caput -c BL18:Det:M3:Det1:TOFTransEnable 0

caput -c BL18:Det:M3:Det1:XY:Stat:EnableCallbacks 1
caput -c BL18:Det:M3:Det1:XY:Stat:ComputeCentroid 1
caput -c BL18:Det:M3:Det1:XY:Stat:ComputeProfiles 1
caput -c BL18:Det:M3:Det1:XY:Stat:CursorX 10
caput -c BL18:Det:M3:Det1:XY:Stat:CursorY 10

caput -c BL18:Det:M3:Det1:2DType 0
caput -c BL18:Det:M3:Det1:TOFNumBins 0


echo "Allocate Space..."
caput -c BL18:Det:M3:AllocSpace.PROC 1

echo "Auto config ROI sizes..."
caput -c BL18:Det:M3:Det1:ConfigTOFStart.PROC 1

caput -c BL18:Det:M3:Det1:ConfigXYStart.PROC 1

echo "Done"

	
