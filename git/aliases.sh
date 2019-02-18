alias git-refresh-subdirs='find . -type d -depth 1 \
                            -exec git --git-dir={}/.git --work-tree=$PWD/{} checkout master \;
                            -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'

alias git-kill-branches='git branch | grep -v "master" | xargs git branch -D'
