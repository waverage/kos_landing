log_write("State: " + STATE).
print "init state".

rcs on.
sas off.
lock steering to up.
lock throttle to 0.

set STATE TO STATE_DESCENT.
log_write("State: " + STATE).
