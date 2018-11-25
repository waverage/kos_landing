if (ship:verticalspeed < -10) {
	set STATE TO STATE_LANDING.
	log_write("State: " + STATE).
}
