gokay@ankara:~$ cat exp2.sh 
#!/usr/bin/expect -f
set timeout 8
set username [lindex $argv 0]
set password [lindex $argv 1]
set hostname [lindex $argv 2]
set command [lindex $argv 3]
log_user 1 

if {[llength $argv] == 0} {
  send_user "Usage:  '\username\' \'password\' \'hostname\' \'\[command\]\'\n"
  exit 1
}

send_user "###########Connecting to the  $hostname##################\n\n"
#send_user "Config: StrictHostKeyChecking=no\n\n"

spawn ssh -q  $username@$hostname

expect {
  timeout { send_user "\nFailed to get password prompt\n"; exit 1 }
  eof { send_user "\nSSH failure for $hostname\n"; exit 1 }
  "*assword"
}

send "$password\r"
expect {
  timeout { send_user "\nLogin failed. Password incorrect.\n"; exit 1}
  "*~]$ "
}

send_user "\nPassword is correct for the user $username\n"

if { $command != "" } {
   send_user "Sending command... $command\n"
   send  "$command\r"
   expect {
  	#timeout { send_user "\nCommand failed logout\n"; exit 1}
  	eof { send_user "\nCommand failed logout\n"; exit 1}
   "*~]$ "
	}
   send "exit\r"
   close
} else {
   send "exit\r"
   close
}
