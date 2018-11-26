declare LOGS_PATH to "logs/".
declare LOG_FILE_NAME to get_log_file_name().

declare function log_write {
    declare parameter log_message.

    local time_string to time:clock.
    log time_string + ": " + log_message to normalize_path(LOGS_PATH + LOG_FILE_NAME).
}

declare function get_log_file_name {
    local t to time.
    return t:year + "_" + t:day + "_" + t:hour + "_" + t:minute + "_" + t:second + ".log".
}