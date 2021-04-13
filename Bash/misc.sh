#!/bin/sh
# -------------------------------------
# COMMON COMMANDS:
# -------------------------------------

exit 0; # DO NOT EXECUTE

# HISTORY: Bash command history without line numbers
history -w /dev/stdout


# POP: Launch Finder to PWD
alias pop='open -a Finder .'


# SED - Replace Spaces
sed -e 's/ /\\ /g'


# DIR: Directory (Location) of Current Script
spath=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


# COUNT
# - Files in Current Directory 
ls  | wc -l


# FIND & EXEC
find *.pdf.xml -type f -exec sed -i '1i <?php  /*Some PHP Stuff*/ ?>' {} \;

find . -type f -exec zip Archive.zip {} +


# Simple Loop
for i in *; do
	echo $i
done

# Rename files in loop
for f in *.csv; do 
	mv -- "$f" "${f%.csv}.xls"
done


# Simple LS Loop
# cd some/dir
# .. OR ...
# for i in $( ls some/dir ); do
for i in $( ls ); do
	b=$(basename $i .png)
done


# FIND + SED to append lines at some line address (Line 3 in this example)
# This is a 2-line command on MAC.
find . -name "*.csv" -exec sed -i.hr '3 a\
THIS IS APPENDED TEXT AT LINE 3\n' '{}' \;



# Grep, and then Grep | NL | edit
ugrep() {
	if [[ -z "$2" ]]
	then
		grep -irl "$1" . | nl | tee ~/.ugrep
	else
		# Remove "| xargs edit" to test the arguments passing through.
		cat < ~/.ugrep | tee /dev/tty | grep -E "\b${2}\b" | sed -e "s/${2}//g" |  xargs edit
	fi
}


# Paste file contents into a new file named "$1"
mf() {
	pbpaste > "$1"
}

# Use SED to capture lines 1-4000 of a file.
sed -n '1,4000p' "file.csv" > "subfile.csv";


# RM a bunch of files (Everything but the 15th, 16th?)
ls * | grep -vE "1[5|6]" | sed -e 's/ /\\ /g' | xargs rm



# Kill a process
ps -e | grep somescript.pl | perl -p -e 's{\s*(\d+).*}{$1}g' | xargs kill


# More FINDs
tail -f $(find $(bmc; pwd) -name moves.txt)
edit "$(find . -name Common\ Commands.sh)" # Requires quotes to contain output spaces in filename
find . -mtime 0 # Find files edited within the past < 24 hours. Man -mtime 


# Simulate LS (minus some dir)
ls |  grep -v "http" | tr '\n' ' ' | xargs printf "%-20s %-20s %-20s %-20s %-20s\n"




# Date Format
date +"%Y-%m-%d-%k-%M-%S"
date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S"


# HDIUTIL
hdiutil resize -size 100mb /path/to/file.dmg