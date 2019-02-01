# docker
alias dimg='docker image'
alias dcon='docker container'
alias dnet='docker network'
alias dvol='docker volume'

alias dps='docker ps'
alias dpsa='docker ps -a'
alias dlog='docker logs'
alias dcleanv='docker volume rm $(docker volume ls -q --filter=dangling=true)'
alias dcleani='docker image rm $(docker images -a --filter=dangling=true -q)'
alias dcleanc='docker container rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias dclean='dcleanc; dcleanv; dcleani;'
alias dkill='docker kill $(docker ps -q)'
alias docker-reset-containers='docker rm -f $(docker ps -a -q)'
alias docker-reset-images='docker rmi -f $(docker images -q)'
alias docker-reset='docker-reset-containers; docker-reset-images'

# docker-compose
alias dc='docker-compose'
alias dcup='docker-compose up'
alias dcupd='docker-compose up --detach'
alias dcupb='docker-compose up --build'
alias dcd='docker-compose down'
alias dd='docker-compose down'



