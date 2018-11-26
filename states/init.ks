log_write("State: " + STATE).

if (ship:status = "LANDED") {
	set STATE to STATE_LANDED.
	log_write("State: " + STATE).
} else {
	rcs on.
	sas off.
	lock steering to up.
	lock throttle to 0.

	set STATE to STATE_DESCENT.
	log_write("State: " + STATE).
}