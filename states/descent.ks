if (ship:verticalspeed < -10) {
	set STATE to STATE_LANDING.
	log_write("State: " + STATE).
}
