set ship:control:pilotmainthrottle to 0.
set ship:control:neutralize to true.
unlock steering.
unlock throttle.
rcs off.
sas on.

set STATE to STATE_DONE.
log_write("State: " + STATE).