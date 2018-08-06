#!/usr/bin/expect


set host [lindex $argv 0]
set user [lindex $argv 1]
set pass [lindex $argv 2]
set expect [lindex $argv 3]

spawn ssh "${user}@${host}"
expect "${expect}"
send "${pass}\r"
interact


# send "exit\r"