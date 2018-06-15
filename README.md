# Expect
Expect automation...

Usage:
You have to install the expect package on the machine that you are going to run expect.sh
expect expect.sh username password hostname/IP [command]
expect expect.sh  gokay "yourpasswordhere" 192.168.122.55 "ps -ef"

If you do not want to use any command. You can test the password is correct for the user.

expect exp2.sh  gokay "yourpasswordhere" 192.168.122.55 
###########Connecting to the  192.168.122.55##################

spawn ssh -q gokay@192.168.122.55
gokay@192.168.122.55's password: 
Last login: Wed Jun 13 16:10:45 2018 from 192.168.122.1
[gokay@archbox ~]$ 
Password is correct for the user gokay



