#export JAVA_HOME=$(/usr/libexec/java_home) # Possible to grep here.
thisuser=$(whoami)
export BIN_HOME="~/Desktop/Local/bin/"
export PATH=$BIN_HOME:$PATH:$JAVA_HOME/bin
export DEPLOY="/Users/$thisuser/Desktop/Local/project-deploy/"


# =============
# Includes
# =============
. ~/Desktop/Local/git/git.sh



# =============
# MySQL
# 
# Turn it on
#
# cd /usr/local/mysql; sudo ./bin/mysqld_safe
#
# =============
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin




# =============
# Locations
# =============
w() {
	cd /Library/WebServer/Documents/
}
export w

_cd(){
	cd "$1"
}

d() {
	cd ~/Desktop
}

h() {
	cd ~;
}

pop() {
	open .
}

pub() {
	d
	cd Local
}



# =============
# Paste into File
# =============
grm() {
	pbpaste > README.txt
}
gpa() {
	pbpaste > "$1"
}




# =============
# Minifiers
# =============
jsMINI() {
	f=$1
	m="min.${f}"
	
	#cat "${f}" | php insert-path-here/cli.php | perl -pi -e "s/\n/; /g" > "${m}"
}

cssMINI() {
	f=$1
	m="min.${f}"
	#cat "${f}" | php insert-path-here/cli.php -t css | perl -pi -e "s/\n/ /g" > "${m}"
}


md() {
	pbpaste | Markdown.pl | pbcopy
}

mdd() {
	md
	echo "<!-- ENTRY -->" > ~/Desktop/md.txt
	echo "<div>" >> ~/Desktop/md.txt
	pbpaste >> ~/Desktop/md.txt
	echo "</div>" >> ~/Desktop/md.txt
	pbcopy < ~/Desktop/md.txt
}

