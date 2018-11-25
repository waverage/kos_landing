lock STEERING to srfretrograde.

local triggerAltOffset to 50.
//local radarOffset to 6.574.
local radarOffset to 24.505.
lock trueRadar to alt:radar - radarOffset.
lock g to constant:g * body:mass / body:radius ^ 2.
lock safeThrust to ship:availablethrust * 0.85.
lock maxDeceleration to (safeThrust / ship:mass) - g.
lock stopDistance to ship:verticalspeed ^ 2 / (2 * maxDeceleration).
lock idealThrottle to stopDistance / trueRadar.
lock impactTime to trueRadar / abs(ship:verticalspeed).

if (trueRadar <= stopDistance + triggerAltOffset) {
	log_write("Lock throttle to " + idealThrottle).
	global lock throttle to idealThrottle.
}

set stopDistanceLabel:text to stopDistanceLabelBaseText + round(stopDistance, 2).
set impactTimeLabel:text to impactTimeLabelBaseText + round(impactTime, 2).

log_write("trueRadar: " + trueRadar).
log_write("safeThrust: " + safeThrust).
log_write("maxDeceleration: " + maxDeceleration).
log_write("stopDistance: " + stopDistance).
log_write("idealThrottle: " + idealThrottle).
log_write("impactTime: " + impactTime).
log_write("------------------------------------").

set GEAR to ALT:RADAR < 500.

if (ship:status = "LANDED") {
	set STATE to STATE_LANDED.
	log_write("State: " + STATE).
}
