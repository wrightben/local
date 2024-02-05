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
	d
	cd ~/Desktop/local/git
	sh clone.sh
	d
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