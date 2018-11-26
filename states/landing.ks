lock steering to srfretrograde.

local triggerAltOffset to 50.
lock trueAltitude to alt:radar - radarOffset.
lock g to constant:g * body:mass / body:radius ^ 2.
lock safeThrust to ship:availablethrust * 0.85.
lock maxDeceleration to (safeThrust / ship:mass) - g.
lock stopDistance to ship:verticalspeed ^ 2 / (2 * maxDeceleration).
lock idealThrottle to stopDistance / trueAltitude.
lock impactTime to trueAltitude / abs(ship:verticalspeed).

if (trueAltitude <= stopDistance + triggerAltOffset) {
	log_write("Lock throttle to " + idealThrottle).
	global lock throttle to idealThrottle.
}

set stopDistanceLabel:text to stopDistanceLabelBaseText + round(stopDistance, 2).
set impactTimeLabel:text to impactTimeLabelBaseText + round(impactTime, 2).

log_write("True altitude: " + trueAltitude).
log_write("Safe thrust: " + safeThrust).
log_write("Max deceleration: " + maxDeceleration).
log_write("Stop distance: " + stopDistance).
log_write("Ideal throttle: " + idealThrottle).
log_write("Impact time: " + impactTime).
log_write("------------------------------------").

set gear to alt:radar < 500.

if (ship:status = "LANDED") {
	set STATE to STATE_LANDED.
	log_write("State: " + STATE).
}
