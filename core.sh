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
	git status
	gitpo
	
	d
	cd resume
	git status
	gitpo
	
	d
	cd languages
	git status
	gitpo
}