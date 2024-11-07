# =============
# Includes
# =============
. ~/Desktop/local/git/git.sh

c() {
	clear;
	exit;
}

o() {
	open .
}


# =============
# Locations
# =============
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


# =============
# Git Summaries
# =============
dbsummary() {
	printf "\n\n" 
	echo "-----------------------------------------"
	pwd
	echo "-----------------------------------------"	
}

dbclone() {
	gitclone resume
	gitclone languages
}

dbcommit() {
	pub
	dbsummary
	git status
	gitpo
	
	d
	cd resume
	dbsummary	
	git status
	gitpo
	
	d
	cd languages
	dbsummary	
	git status
	gitpo
}