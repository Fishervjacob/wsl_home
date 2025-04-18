#!/bin/bash

############ Git ##############
#Input Branch name (no origin/)
function git_commonBase() {
        set -x
        git merge-base origin/$1 origin/master
        set +x
}

#Input Branch name (no origin/)
function git_oneline() {
        set -x
        git log --oneline origin/master..$1
        set +x
}

#Input Branch name (no origin/)
function git_squashy() {
        set -x
        echo $1
        git reset --soft `git merge-base origin/master $1`
        set +x
}
###############################
