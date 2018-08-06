#!/bin/sh

u=$(cat ftp.cred | awk 'NR==1 { print $2; }')	# "Line 1, Word 2"
p=$(cat ftp.cred | awk 'NR==1 { print $3; }')	# "Line 1, Word 3"
s=$(cat ftp.cred | awk 'NR==1 { print $1; }')	# "Line 1, Word 1"

ftp -inv ${s}<<ENDFTP
user ${u} ${p}

$(cat ftp.cmd)
	
bye
ENDFTP

exit

# $(cat ftp.cmd)
# This is just a list of FTP commands, one per line.