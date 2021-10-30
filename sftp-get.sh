#!/bin/bash

local_path=test.txt
key_path=~/.ssh/id_rsa
remote_path=incoming
user=test-user
ip=192.168.1.1


# Option 1 - All actions in one command
sftp -i $key_path $user@$ip <<EOF
ls $remote_path
get $remote_path/* .
EOF

# Option 2 - Get the commands from file, cant use variables so easily
#sftp -i $key_path -b sftp-commands.txt $user@$ip
