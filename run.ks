// @author Volodymyr Tsumanchuk (https://github.com/waverage)
declare global PROJECT_PATH to "0:/kos_landing/".

runoncepath(PROJECT_PATH + "lib.ks").
runoncepath(PROJECT_PATH + "logger.ks").

local runLand to false.
local exit to false.

LOCAL gui IS GUI(200).
set gui:x to 20.

LOCAL label IS gui:ADDLABEL("Landing Guidaince").
SET label:STYLE:ALIGN TO "CENTER".
SET label:STYLE:HSTRETCH TO True. // Fill horizontally

global stopDistanceLabelBaseText is "Stop distance: ". 
global stopDistanceLabel is gui:addlabel(stopDistanceLabelBaseText + "0").
stopDistanceLabel:hide().

global impactTimeLabelBaseText is "Impact time: ".
global impactTimeLabel is gui:addlabel(impactTimeLabelBaseText + "0").
impactTimeLabel:hide().

LOCAL landBtn TO gui:ADDBUTTON("Land").
LOCAL closeBtn TO gui:ADDBUTTON("Close").

function landBtnHandler {
	stopDistanceLabel:show().
	impactTimeLabel:show().
	set runLand to true.
}

function closeBtnHandler {
	set exit to true.
}

gui:SHOW().

SET closeBtn:ONCLICK TO closeBtnHandler@.
SET landBtn:ONCLICK TO landBtnHandler@.

wait until runLand or exit.

if not exit {
	runpath(normalize_path("land.ks")).
}

gui:dispose().