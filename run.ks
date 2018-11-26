// @author Volodymyr Tsumanchuk (https://github.com/waverage)
declare global PROJECT_PATH to "0:/kos_landing/".

runoncepath(PROJECT_PATH + "lib.ks").
runoncepath(PROJECT_PATH + "logger.ks").

local runLand to false.
local exit to false.

local gui is GUI(200).
set gui:x to 20.

local label is gui:addlabel("Landing Guidaince").
set label:style:align to "CENTER".
set label:style:hstretch to true. // Fill horizontally

global stopDistanceLabelBaseText is "Stop distance: ". 
global stopDistanceLabel is gui:addlabel(stopDistanceLabelBaseText + "0").
stopDistanceLabel:hide().

global impactTimeLabelBaseText is "Impact time: ".
global impactTimeLabel is gui:addlabel(impactTimeLabelBaseText + "0").
impactTimeLabel:hide().

local landBtn to gui:addbutton("Land").
local closeBtn to gui:addbutton("Close").

global radarOffset to alt:radar.
log_write("Radar offset: " + radarOffset).

function landBtnHandler {
	stopDistanceLabel:show().
	impactTimeLabel:show().
	set runLand to true.
}

function closeBtnHandler {
	set exit to true.
}

gui:show().

set closeBtn:onclick to closeBtnHandler@.
set landBtn:onclick to landBtnHandler@.

until false {
	wait until runLand or exit.
	if not exit {
		runpath(normalize_path("land.ks")).
		set runLand to false.
	} else {
		break.
	}
}

gui:dispose().