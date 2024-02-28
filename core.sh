# =============
# Includes
# =============
. ~/Desktop/local/git/git.sh



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

tac() {
	cd ~/Desktop/languages/javascript/Games/tic-tac-toe/
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
	
# 	d
# 	cd resume
# 	dbsummary	
# 	git status
# 	gitpo
	
	d
	cd languages
	dbsummary	
	git status
	gitpo
}