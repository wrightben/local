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

d() {
	cd ~/Desktop
}

h() {
	cd ~;
}

pub() {
	d
	cd Local
}

pop() {
	open .
}

