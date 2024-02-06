#!/bin/sh


# PUSH EXISTING repository  from CL
gitexist() {
	db="$1"
	# https://username:password@github.com/path/repo.git	# AUTHENTICATED
	git remote add origin https://github.com/wrightben/${db}.git
	gitpom
}


# CREATE NEW repository  from CL, and PUSH
gitnew() {
	db="$1"
	touch README.md
	git init
	gitall
	gitexist "${db}"
}


# Register user properties
gitreg() {
	username="$1"
	email="$2"

	# Global
	#git config --global user.name "${username}"
	#git config --global user.email ${email}
	
	# REPO-specific
	git config user.name "${username}"
	git config user.email ${email}
}


gitclone() {
	db="$1"
	git clone https://github.com/wrightben/${db}.git .
	#gitreg
}




# To list all of the non-tracked files in git is easy enough:
# $ git ls-files --other

# List all non-tracked files ( Delete .DS_Store )
gitls() {
	find . -name .DS_Store -delete
	git ls-files -o | \
	sed -e 's/ /\\ /g'
}

gitrm() {
	gitls | xargs rm 
}

# Commit all untracked files
gitall() {
	gitls | xargs git add	# OR git add -A
	git commit -am "gitall commit"
}

# Push to origin
gitpom() {
	if [[ -n "$(git remote -v)" ]]; then
#		git push -u origin master
		git push
	fi
}

# Commit and Push
gitpo() {
	echo ""; echo "-------------------------------"; pwd
	gitall; gitpom
}






gitzip() {
	n="$1" # "repo.zip" or something
	d=$(date "+%Y-%m-%d")
	
	f="${n} ${d}.zip"
	
	git archive HEAD --format=zip > "${f}"
}



# NEW BRANCH
# git checkout -b wrightben
# git push origin wrightben
# git branch --set-upstream-to=origin/wrightben wrightben

# DELETE BRANCH
# git branch -d wrightben
# git push origin :wrightben
# CREATE/DESTROY Branch
gitnb() {  #gitn(ew)b(ranch)
	branch="$1"
	git checkout -b ${branch}
	git push origin  ${branch}
	git branch --set-upstream-to=origin/${branch}  ${branch}
}

gitrb() { #gitr(emove)b(ranch)
	branch="$1"
	git branch -d ${branch}
	git push origin :${branch}
}



# LOG AND SHOW PREVIOUS VERISION
# git log --name-only
# git show 53df9540fab4bac204766623f4789d5f77fc2049:src/appdirectory/file.xhtml

