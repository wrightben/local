# =============
# Includes
# =============
. ~/Desktop/local/git/git.sh


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

pop() {
	open .
}

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