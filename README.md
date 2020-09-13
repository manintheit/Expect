# Expect

Sample Expect automation...

# Usage:

You have to install the expect package on the machine that you are going to run expect.sh
```sh
expect expect.sh username password hostname/IP [command]
```
```sh
expect expect.sh  user1 "yourpasswordhere" 192.168.122.55 "ps -ef"
```
If you do not want to use any command. You can test if credential is correct for the user specfied.

# Example:
```console
expect exp.sh  user1 "yourpasswordhere" 192.168.122.55 
```
```console
###########Connecting to the  192.168.122.55##################

spawn ssh -q user1@192.168.122.55
user1@192.168.122.55's password: 
Last login: Wed Jun 13 16:10:45 2018 from 192.168.122.1
[user1@archbox ~]$ 
Password is correct for the user user1
```



