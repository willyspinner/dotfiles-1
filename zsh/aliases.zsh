# Aliases in this file are bash and zsh compatible

# Don't change. The following determines where YADR is installed.
yadr=$HOME/.yadr

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi




# YADR support
alias yav='yadr vim-add-plugin'
alias ydv='yadr vim-delete-plugin'
alias ylv='yadr vim-list-plugin'
alias yup='yadr update-plugins'
alias yip='yadr init-plugins'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
#alias df='df -h'
#alias du='du -h -d 2'

if [[ $platform == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
TRAPHUP() {
  source $yadr/zsh/aliases.zsh
}

alias ae='echo "Editing my aliases... " ; vim $yadr/zsh/aliases.zsh' #alias edit
alias aer='source $yadr/zsh/aliases.zsh'  #alias reload
alias gar="killall -HUP -u \"$USER\" zsh"  #global alias reload

# vim using
mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vim="mvim -v"
fi

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='vim ~/.vimrc'

# zsh profile editing
alias ze='vim ~/.zshrc'

# Git Aliases
alias gs='git status'
alias sg='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias gap='git add -p'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
#alias gr='git rebase'
alias gr="git reset"
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gfa='git fetch --all'
alias gfap='git fetch --all --prune'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
# Staged and cached are the same thing
alias gdc='git diff --cached -w'
alias gpom="git push origin master"
alias gpo="git push origin"
alias gpfm="git push fork master"
alias gds='git diff --staged -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
#alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias gch="git checkout"

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'



# Gem install
alias sgi='sudo gem install --no-ri --no-rdoc'

# TODOS
# This uses NValt (NotationalVelocity alt fork) - http://brettterpstra.com/project/nvalt/
# to find the note called 'todo'
alias todo='open nvalt://find/todo'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

alias rdm='rake db:migrate'
alias rdmr='rake db:migrate:redo'

# Zeus
#alias zs='zeus server'
#alias zc='zeus console'
#alias zr='zeus rspec'
#alias zrc='zeus rails c'
#alias zrs='zeus rails s'
#alias zrdbm='zeus rake db:migrate'
#alias zrdbtp='zeus rake db:test:prepare'
#alias zzz='rm .zeus.sock; pkill zeus; zeus start'


# Rspec
#alias rs='rspec spec'
#alias sr='spring rspec'
#alias src='spring rails c'
#alias srgm='spring rails g migration'
#alias srdm='spring rake db:migrate'
#alias srdt='spring rake db:migrate'
#alias srdmt='spring rake db:migrate db:test:prepare'


# Sprintly - https://github.com/nextbigsoundinc/Sprintly-GitHub
alias sp='sprintly'
# spb = sprintly branch - create a branch automatically based on the bug you're working on
#alias spb="git checkout -b \`sp | tail -2 | grep '#' | sed 's/^ //' | sed 's/[^A-Za-z0-9 ]//g' | sed 's/ /-/g' | cut -d"-" -f1,2,3,4,5\`"

alias hpr='hub pull-request'
alias grb='git recent-branches'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

#alias dbtp='spring rake db:test:prepare'
#alias dbm='spring rake db:migrate'
#alias dbmr='spring rake db:migrate:redo'
#alias dbmd='spring rake db:migrate:down'
#alias dbmu='spring rake db:migrate:up'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew doctor'


# Tree coloring shiznits
#
alias tree="tree -C"
# my stuff
alias az="echo 'Editing my .zshrc .....' ; vi ~/.zshrc"
alias gau="git add -u"
alias gphm="git push heroku master"
alias wcl="wc -l"

# docker shizzzles
alias docim="docker image"
alias docon="docker container"
alias docom="docker commit"
alias docex="docker exec"
alias dps="docker ps"
alias dpl="docker pull"
alias docims="docker images"
docextermwarning="killing and pruning all non-active containers... hope you know what you're doing...";
alias docexterm='echo "$docextermwarning"; docker container kill $(docker ps -aq) && yes | docker container prune'


# backups
alias tpbp="echo \"backing up typora....\";typorabackup"
alias tppl="cd ~/typora_docs; git pull"
alias typorabackup='pushd . && cd ~/typora_docs; git add .; git commit -m "typora back up as of $(date )" && git push origin master; popd;'

# ifconfig | grep inet
alias inet="ifconfig | grep inet"

# redis

alias redis-server="echo using redis-server alias... using willyredis.conf...;redis-server /Users/willyspinner/redis/redisconfs/willyredis.conf"
# alias functions (template aliases)
alias afe="vi ~/willysBinSrc/functions.zsh"
alias afer="source ~/willysBinSrc/functions.zsh"



# ucla shizzles
alias ccle=" echo ' opening ucla ccle....';open -a /Applications/Google\ Chrome.app https://ccle.ucla.edu"
# motherfkin nvm taking so long on startup that i decided to put it here.
alias loadnvmbashcomp='[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"';
#alias loadnvm='[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" ]';
alias loadnvm='[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"'
#alias nvm="/usr/local/bin/nvm || echo 'You havent loaded nvm. load it by typing the command loadnvm';"



# aws
alias awsgetinstance="aws ec2 get-console-output --instance-id i-0891e452aa0b73ea3"

# startup alias
alias aw="vi ~/.startup"
alias awr="source ~/.startup"

# deleting /private/var/log/asl
#
alias delasl="sudo rm -rf /private/var/log/asl"
alias helplldb="open /Users/willyspinner/Desktop/C_and_C++Stuff/LLDBtoGDBCommandMap.pdf"


# go stuff
#
alias gobinls="ls ~/go/bin";
alias gotogo="cd ~/go/src/github.com/willyspinner"
alias depens="dep ensure -v"


# pretty json formatter.
alias prettyjson="python -m json.tool"

alias cdtep="cd ~/Desktop/MEAN/my_Sites/tepuk-nyamuk"
alias nginpath="/usr/local/etc/nginx"
alias ipshow="ip addr show en0"
alias rc="redis-cli"
alias azr="source ~/.zshrc"
alias dsk="diskutil"
alias rmqctl="rabbitmqctl"
alias rmq-server=rabbitmq-server
alias reds="redis-server"
alias gss="git status -s"
alias grmt="git remote"
uetc="/usr/local/etc"
alias ctmpl="consul-template"
alias curlbot="echo 'curling devel whatsappbot...';curl -X POST localhost:4455/api/api -H 'X-Real-IP:127.0.0.1' -d AccountSid=a"

alias pglog="echo tailing /Users/willyspinner/Library/Application Support/Postgres/var-10/postgresql.log ...
tail -f '/Users/willyspinner/Library/Application Support/Postgres/var-10/postgresql.log'
"
alias tailpg="pglog"
alias pgtail="pglog"
alias es="elasticsearch"
alias kb="kibana"
alias dcmp="docker-compose"
alias dpr="docon prune"

alias shbbb="ssh -i ~/.ssh/id_rsa willyspinner@bbb.homelinux.com"
alias shbeast-local="ssh -i ~/.ssh/id_rsa willyspinner@192.168.1.5"
alias shbeast="ssh willyspinner@mach-2.homelinux.net"
alias sccp="scp -i ~/.ssh/id_rsa"
alias gmv="git mv"


alias gob="go build"
alias got="go test"
alias gt="go test"
