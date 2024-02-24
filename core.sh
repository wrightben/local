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
dbclone() {
	gitclone resume
	gitclone languages
}

dbcommit() {
	pub
	gitpo
	
	d
	cd resume
	gitpo
	
	d
	cd languages
	gitpo
}