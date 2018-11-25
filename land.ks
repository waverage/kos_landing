runoncepath(normalize_path("logger.ks")).
runoncepath(normalize_path("lib.ks")).
runoncepath(normalize_path("logger.ks")).
runoncepath(normalize_path("states_list.ks")).

clearscreen.
log_write("Start landing").

global STATE to STATE_INIT.

until STATE = STATE_DONE {
    runpath(normalize_path("states/" + STATE + ".ks")).
    wait 0.005.
}

print "End landing.".

log_write("Landed!").