# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

# define the home directory as a variable HOME
export HOME=/home/dowewas2
export XDG_CONFIG_HOME=/home/dowewas2/.config
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export LEDGER=$HOME/ledger
export SCRIPTS=$HOME/shell
export DOTFILES=$HOME/.dotfiles
export GTK3_RC_FILES="$HOME/.config/gtk-3.0/settings.ini"
export MANPAGER="nvim -c 'set filetype=man' "

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"
# ZSH_THEME="daveverwer"
# ZSH_THEME="gentoo"
# ZSH_THEME="spaceship"
# SPACESHIP_PROMPT_ORDER=(
# dir
# git
# venv
# pyenv
# exec_time
# line_sep
# battery
# char
# )
# SPACESHIP_RPROMPT_ORDER=(
# time
# vi_mode
# )
# SPACESHIP_TIME_SHOW="true"
# SPACESHIP_TIME_12HR="true"
# SPACESHIP_TIME_FORMAT="%D{%H:%M}"
# SPACESHIP_GIT_SYMBOL=""
# SPACESHIP_GIT_PREFIX=""
# SPACESHIP_GIT_BRANCH_PREFIX=""
# SPACESHIP_GIT_STATUS_PREFIX=" "
# SPACESHIP_GIT_STATUS_SUFFIX=""

# SPACESHIP_BATTERY_SHOW=(
# always
# )
# SPACESHIP_BATTERY_THRESHOLD=(
# 20
# )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode python fast-syntax-highlighting zsh-autosuggestions archlinux)

### SOURCES 
source $ZSH/oh-my-zsh.sh
source $HOME/github/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/github/fzf-marks/fzf-marks.plugin.zsh
source $HOME/github/forgit/forgit.plugin.zsh
# source $HOME/shell/ledger.zsh
source $HOME/shell/cal.zsh
source $HOME/shell/z/z.sh
source $HOME/.ldf-completion
# source $HOME/shell/ledgerformat-completion
# autoload bashcompinit
# bashcompinit
# source $HOME/shell/wp-completion.zsh
source $HOME/shell/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward
# bindkey '^L' autosuggest-accept

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## my personal commands
# my main function

HISTSIZE=100000000
HISTTIMEFORMAT="%m/%d/%y %T "
HISTFILE=~/.zsh_eternal_history
SAVEHIST=100000000
# PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
# shopt -s histappend
export PAGER="less"
# export PAGER="most"
# export PAGER="w3m"
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

alias vim='nvim'
function k () {
	s=$(python2 ~/shell/d.py "${@}")
	eval "${s}"
}


# compiles give file with gcc
function gg () {
	gcc "${@}" -o exec && ./exec
}

alias r='ranger'
alias pacman2='yaourt'
alias pacman3='pikaur'
alias rl='~/shell/readinglog.py | grep -C 3 $(date +"%b-%d")'
alias tk='task'
alias qq='~/qutebrowser/.venv/bin/python3 -m qutebrowser'
alias t='tmux a'
alias qsage='cd ~/sage && sage -q && cd -'
alias cocal='ssh 730c5f095aa64550ba66dfb6671d0d67@ssh.cocalc.com'
alias gmail='mutt -s "home comp" dowewas2@gmail.com'
alias inbox='offlineimap -f INBOX'
alias allmail='offlineimap'
# list hidden files with color
alias ls='ls -a --color -h --group-directories-first'
alias lsl='ls -a -l --color -h --group-directories-first'
alias rmcalcurse='rm ~/.calcurse/.calcurse.pid'
alias makerefs="cat ~/bitbucket/main/refs.bib > ~/bitbucket/isuthesiscomplete/refs.bib"
alias zathura='zathura --fork'
# -a archive mode
# -r recurse into directories
# -l copy symlinks as symlinks
# -p preserve permissions
# -t preserve modification times
# -D preserve device files (super-user only)
# -h human readable 
# -P show progress
# -v verbos which means more information
# -deletes files that are no being push
#
# sync files and replace git file
function picbackup() {
	out
	sudo mount -U 80ece0a2-82f1-4e11-8aac-552b3a3c30d3 /mnt/usb1
	sodir='/mnt/usb1/Pictures/DCIM/'
	sudo rsync -ahPv /mnt/iphone/DCIM/ ${sodir}
}
function mybackup() {
	# $HOME/shell/out.zsh
	nocorrect sudo cryptsetup close cryptroot
	mfull=$(lsblk -f -r | ag "crypto_LUKS")
	mdrive=$(echo $mfull | awk '{print $1}')
	sudo cryptsetup open "/dev/$mdrive" cryptroot

	sudo mount -U 19233283-f81d-4c19-adc2-943709afceab /mnt/usb1
	sodir='/mnt/usb1/dowewas2/l3novo/'
	sudo rsync -ahPv --exclude={.cache,.local,.offlineimap,.mozilla,.oh-my-zsh/log} --delete $HOME/ ${sodir} | tee $HOME/cache/backup_log/log
	mount_check=$(lsblk -f | grep "/mnt/usb1")
	if [[ $mount_check ]]
	then
		sudo umount /mnt/usb1
	fi
	sudo cryptsetup close cryptroot
	cd $HOME/cache/backup_log/
	backup_date=$(date)
	git ac "$backup_date" > /dev/null
}
alias myb='mybackup'
function mybackupall() {
	$HOME/shell/out.zsh
	sudo mount -U 19233283-f81d-4c19-adc2-943709afceab /mnt/usb1
	sodir='/mnt/usb1/dowewas2/l3novo/'
	sudo rsync -ahPv --delete $HOME/ ${sodir}
}
function mybackupall_torepo() {
	$HOME/shell/out.zsh
	sudo mount -U d75710e0-4590-4660-9c53-9e0e7a425890 /mnt/usb1
	sodir='/mnt/usb1/l3novo/dowewas2/'
	sudo rsync -ahPv --delete $HOME/ ${sodir}
}
function mybackupall_picture() {
	$HOME/shell/out.zsh
	sudo mount -U d75710e0-4590-4660-9c53-9e0e7a425890 /mnt/usb1
	DATE=$(date +%d%b%YX%S)
	sudo sh -c "mkdir /mnt/usb1/pics/$DATE/"
	sodir="/mnt/usb1/pics/$DATE/"
	sudo sh -c "mv $HOME/Pictures/* ${sodir}"
}
function mybackupall_package() {
	$HOME/shell/out.zsh
	sudo mount -U d75710e0-4590-4660-9c53-9e0e7a425890 /mnt/usb1
	DATE=$(date +%d%b%YX%S)
	sudo sh -c "mkdir /mnt/usb1/packages/$DATE/"
	sodir="/mnt/usb1/packages/$DATE/"
	sudo sh -c "mv /var/cache/pacman/pkg/* ${sodir}"
}
function mybackupall2() {
	$HOME/shell/out.zsh
	sudo mount -U 80ece0a2-82f1-4e11-8aac-552b3a3c30d3 /mnt/usb1
	sudo mount -U 8A96-6A8B /mnt/usb2
	sodir='/mnt/usb1/dowewas2/l3novo/'
	sodir2='/mnt/usb2/l3novo/'
	sudo rsync -ahPv --delete ${sodir} ${sodir2}
}
function isubackup() {
	sudo sshfs ddyoung@sftp.iastate.edu:WWW/ /mnt/server
	sudo rsync -trPv --delete $HOME/web/WWW/ /mnt/server/
}
alias isuin='isubackup'
alias out='$HOME/shell/out.zsh'
function out2() {
	# unmount the directory /mnt/usb1
	mount_check=$(lsblk -f | grep "/mnt/usb1")
	if [[ $mount_check ]]
	then
		sudo umount /mnt/usb1
	fi
	mount_check2=$(lsblk -f | grep "/mnt/usb2")
	if [[ $mount_check2 ]]
	then
		sudo umount /mnt/usb2
	else
		return 0
	fi
}
function isuout() {
	sudo umount /mnt/server
}
# shows a list of mounted usb drives
alias mymounts='lsblk -f'
# Example of how to mount usb, uuid and directory
# sudo mount -U 687990FC10218D0D /media/dowewas2/usb1
#
alias myk='vim ~/.linuxd/key.md'
# alias xterm='xterm -fa "Monospace" -fs 10'
# get funds from other computer
alias getfunds='rsync -azhPv --delete 192.168.0.106:"~/funds/" ~/funds && rsync -azhPv --delete 192.168.0.106:"~/.gnucash/" ~/.gnucash'
# put funds to other computerj
alias putfunds='rsync -azhPv --delete ~/funds 192.168.0.106:"~/funds/" && rsync -azhPv --delete ~/.gnucash 192.168.0.106:"~/.gnucash/"'
# Git in vim
alias gits="nvim .git/index"
alias gitv="nvim -c GV"
alias gitf="nvim -c BCommits"
alias gitc="nvim -c Commits"

# open w3m
function ww {
	w3m $(sed -z "s/\n/ /g" ~/w3m.txt)
}

function dput() {
	rsync -azhPv ~/"${@}"/* 192.168.0.108:"${@}"/
}

function ddput() {
	rsync -azhPv --delete ~/"${@}"/* 192.168.0.108:"${@}"/
}

function dmput() {
	rsync -azhPv ./"${1}" 192.168.0108:"${2}"
}


function zshput() {
	echo "# "${@}"" >> ~/.zshrc
}
# add and commit selected files and folders
function gitaf() {
	git add ${@[0,-2]}
	git commit -am "${@[-1]}"
}
# grep a word in the .sage directory and append results to searches.py file
function mysearch() {
	# r - recursive
	# i - ignore case
	# n - include line number and part of the line contain word
	# m1 - only include 1 line per file
	# include - only list file containing .py
	~directory="$HOME/.sage/"
	file="$HOME/.sage/searches.py"
	grep -rin -m1 --include=\*.py\* ${@} ${directory} > ${file}
}
alias mys='mysearch'

function addtodotfiles() {
	newname="$HOME/.dotfiles/${2}"
	mv ${1} ${newname}
	ln -s ${newname} ${1}
}
alias adddot='addtodotfiles'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source "$HOME/.fzf/shell/key-bindings.zsh"
export FZF_DEFAULT_COMMAND='fd --type file --color=always -HIE .git'
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS="
	--height 40% 
	--layout=reverse 
	--border 
	--bind 'ctrl-l:toggle+down+backward-kill-word f3:execute(bat 
	--style=numbers{} || less -f {}),ctrl-i:toggle-preview,alt-k:preview-up,alt-j:preview-down,alt-a:select-all' 
	--ansi 
	--preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' 
	--preview-window='right:hidden:wrap'
  --bind ctrl-f:page-down,ctrl-b:page-up
  --color fg:8,bg:0,hl:34,fg+:34,bg+:0,hl+:8
  --color info:34,prompt:34,spinner:34,pointer:34,marker:34"
export BROWSER=/usr/bin/qutebrowser
export SAGE_BROWSER="qutebrowser"
export TEXINPUTS="SAGE_ROOT/local/share/texmf//:"
# export SAGE_BROWSER="firefox"
# export SAGE_BROWSER="~/qutebrowser/.venv/bin/python3 -m qutebrowser "
#
#This include .sage directory as a directory in which python looks for modules
# export PYTHONPATH="/home/dowewas2/.sage/myfun/bidiakis.py"
# export PYTHONPATH="/usr/lib/python3.6/site-packages/"
# powerline-daemon -q 
# . "/usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh"
# export PYTHONPATH="/usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh"
function maps() {
	mapsfile=$(mktemp /tmp/mapsfileXXXX)
	mapsfile2=$(mktemp /tmp/mapsfile2XXXX)
	find $HOME/shell/* $HOME/.zshrc -maxdepth 1 -type f -exec awk '/\y^function\y/, /^}/' {} + >> $mapsfile
	find $HOME/shell/* $HOME/.zshrc -maxdepth 1 -type f -exec awk '/\y^alias\y/, /^}/' {} + >> $mapsfile
	ag "^function" --nonumbers --nocolor $mapsfile >> $mapsfile2
	ag "^alias" --nonumbers --nocolor $mapsfile >> $mapsfile2
	$HOME/shell/myfg.zsh $(cat $mapsfile2 | fzf --preview-window up:75% --bind='alt-k:preview-up' --bind='alt-j:preview-down' --preview '$HOME/shell/mymap.zsh {}'| awk -F ' ' '{print $2}' | cut -d "(" -f 1)
}
alias myf='$HOME/shell/myf.zsh'
alias myfg='$HOME/shell/myfg.zsh'
function sv() {
	ag ":sage:" $HOME/.sage/myfun/logs/* | fzf --bind='alt-j:preview-down' --bind='alt-k:preview-up' --preview ' $HOME/shell/svopen.zsh {}'
}
function dog() {
	# Cat's file with syntax highlighting.
	# Input: a file
	highlight -O ansi --force ${@}
}
function addcolumn() {
	# Calculate the sum of the second column of a file
	# prints the data as well
	# Input: a file with data in second column
	cat ${1} | awk '{sum+=$'$2' ; print $0} END{print "sum=",sum}'
}

function myls() {
	mystring=$(grep "|" $HOME/.calcurse/apts | fzf --delimiter="\|" --with-nth=2,1 --inline-info)
	echo "${mystring}"
}
function AgToFzf() {
	# use fzf to open ag search
	# This is used for going to any result from command line.
	local file
	file=$(ag "\*" | ag --nobreak --noheading "." | fzf -0 -1 | awk -F: '{print $1 " +" $2}')
	if [[ -n $file ]]
	then
		eval vim $file
	fi
}
function openpaper() {
	# opens a paper using fzf from terminal
	myref=$HOME/bitbucket/main/refs.org
	myresult=$(awk '/\*\*/' $myref | fzf -0 -1)
	if [[ $myresult ]];
	then
		mypaper=$(awk "/$myresult/, /~/" $myref | tail -1 | awk '{print substr($0,6,(length($0)-7))}')
		eval nohup zathura $mypaper > /dev/null &
	else
		return 0
	fi
}
alias op='openpaper'
unalias grv
alias grv='$HOME/shell/grv -repoFilePath .'
unalias z
z() {
  # some comment
  if [[ -z "$*" ]]; then
    cd "$(_z -l 2>&1 | fzf +s --tac | sed 's/^[0-9,.]* *//')"
  else
    _last_z_args="$@"
    _z "$@"
  fi
}
# fda - including hidden directories
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m --layout=reverse --height=40%) && cd "$dir"
}
zz() {
  cd "$(_z -l 2>&1 | sed 's/^[0-9,.]* *//' | fzf -q "$_last_z_args")"
}
p () {
    local DIR open
    declare -A already
    # define a directory
    DIR="${HOME}/.cache/pdftotext"
    # make the directory
    mkdir -p "${DIR}"
    # state which program to open pdf
    if [ "$(uname)" = "Darwin" ]; then
        open=open
    else
        open="zathura"
        # open="gio open"
    fi

    {
    # print list list of file in current directory/subdirectories ending in pdf
    ag -g ".pdf$"; # fast, without pdftotext
    ag -g ".pdf$" \
    | while read -r FILE; do
        local EXPIRY HASH CACHE
        HASH=$(md5sum "$FILE" | cut -c 1-32)
        # Remove duplicates (file that has same hash as already seen file)
        [ ${already[$HASH]+abc} ] && continue # see https://stackoverflow.com/a/13221491
        already[$HASH]=$HASH
        EXPIRY=$(( 86400 + $RANDOM * 20 )) # 1 day (86400 seconds) plus some random
        CMD="pdftotext -f 1 -l 1 '$FILE' - 2>/dev/null | tr \"\n\" \"_\" "
        CACHE="$DIR/$HASH"
        test -f "${CACHE}" && [ $(expr $(date +%s) - $(date -r "$CACHE" +%s)) -le $EXPIRY ] || eval "$CMD" > "${CACHE}"
        echo -e "$FILE\t$(cat ${CACHE})"
    done
    } | fzf -e  -d '\t' \
        --preview-window up:75% \
	--bind='alt-k:preview-up' \
	--bind='alt-j:preview-down' \
        --preview '
                v=$(echo {q} | tr " " "|");
                 echo {1} | grep -E "^|$v" -i --color=always;
                pdftotext -f 1 -l 1 {1} - | grep -E "^|$v" -i --color=always' \
        | awk 'BEGIN {FS="\t"; OFS="\t"}; {print "\""$1"\""}' \
        | xargs $open > /dev/null 2> /dev/null
}
pp () {
		cd $HOME/bitbucket/papers/
    local DIR open
    declare -A already
    # define a directory
    DIR="${HOME}/.cache/pdftotext"
    # make the directory
    mkdir -p "${DIR}"
    # state which program to open pdf
    if [ "$(uname)" = "Darwin" ]; then
        open=open
    else
        open="zathura"
        # open="gio open"
    fi

    {
    # print list list of file in current directory/subdirectories ending in pdf
    ag -g ".pdf$"; # fast, without pdftotext
    ag -g ".pdf$" \
    | while read -r FILE; do
        local EXPIRY HASH CACHE
        HASH=$(md5sum "$FILE" | cut -c 1-32)
        # Remove duplicates (file that has same hash as already seen file)
        [ ${already[$HASH]+abc} ] && continue # see https://stackoverflow.com/a/13221491
        already[$HASH]=$HASH
        EXPIRY=$(( 86400 + $RANDOM * 20 )) # 1 day (86400 seconds) plus some random
        CMD="pdftotext -f 1 -l 1 '$FILE' - 2>/dev/null | tr \"\n\" \"_\" "
        CACHE="$DIR/$HASH"
        test -f "${CACHE}" && [ $(expr $(date +%s) - $(date -r "$CACHE" +%s)) -le $EXPIRY ] || eval "$CMD" > "${CACHE}"
        echo -e "$FILE\t$(cat ${CACHE})"
    done
    } | fzf -e  -d '\t' \
        --preview-window up:75% \
	--bind='alt-k:preview-up' \
	--bind='alt-j:preview-down' \
        --preview '
                v=$(echo {q} | tr " " "|");
                 echo {1} | grep -E "^|$v" -i --color=always;
                pdftotext -f 1 -l 1 {1} - | grep -E "^|$v" -i --color=always' \
        | awk 'BEGIN {FS="\t"; OFS="\t"}; {print "\""$1"\""}' \
        | xargs $open > /dev/null 2> /dev/null
		cd -
}

function CheckGitRepositories() {
	# returns git repos if changes have been made
	currentdir=$(pwd)
	mygitrep=$(mktemp /tmp/gitfileXXXX)
	find /home/dowewas2 -name .git -type d -printf "%h\n" > $mygitrep
	for f in $(cat $mygitrep); do
		cd $f
		if [[ $(git st) ]];
		then
			cutfile=$( pwd | cut -c 16- )
			echo -e '\033[0;36m'$cutfile
			eval git st
			echo " "
		fi
	done
	cd $currentdir
}
alias cgr='CheckGitRepositories'
function CheckGitUpdates() {
	# returns git repos if changes have been made
	currentdir=$(pwd)
	mygitrep=$(mktemp /tmp/gitfileXXXX)
	find /home/dowewas2 -name .git -type d -printf "%h\n" > $mygitrep
	for f in $(cat $mygitrep); do
		cd $f
		if [[ $(git ls-remote) != "fatal: No remote configured to list refs from." ]];
		then
			cutfile=$( pwd | cut -c 16- )
			echo -e '\033[0;36m'$cutfile
			eval git fetch origin
			echo " "
		fi
	done
	cd $currentdir
}
function PaintConversion() {
	fname=$(basename ${1})
	fbname=${fname%.*}
	convert $1 $HOME/bitbucket/web/derekyoungmath.github.io/rec/spring19/${2}/files/$fbname.pdf
}
function mypaintconvert() {
	PaintConversion "${@}A.png" A
	PaintConversion "${@}B.png" B
	mv "${@}A.png" $HOME/bitbucket/web/derekyoungmath.github.io/rec/spring19/A/files/
	mv "${@}B.png" $HOME/bitbucket/web/derekyoungmath.github.io/rec/spring19/B/files/
}
# ftags - search ctags
function ftags() {
  local line
  if [[ -e "$*" ]]; then
  [ -e "$*" ] &&
  line=$(
    awk 'BEGIN { FS="\t" } !/^!/ {print toupper($4)"\t"$1"\t"$2"\t"$3}' "$*" |
    cut -c1-80 | fzf --nth=1,2
  ) && ${EDITOR:-vim} $(cut -f3 <<< "$line") -c "set nocst" \
                                      -c "silent "$*" $(cut -f2 <<< "$line")"
  else
  line=$(
    awk 'BEGIN { FS="\t" } !/^!/ {print toupper($4)"\t"$1"\t"$2"\t"$3}' tags |
    cut -c1-80 | fzf --nth=1,2
  ) && ${EDITOR:-vim} $(cut -f3 <<< "$line") -c "set nocst" \
                                      -c "silent tag $(cut -f2 <<< "$line")"
  fi
}
function wifi() {
# 	has() {
# 	  local verbose=false
# 	  if [[ $1 == '-v' ]]; then
# 	    verbose=true
# 	    shift
# 	  fi
# 	  for c in "$@"; do c="${c%% *}"
# 	    if ! command -v "$c" &> /dev/null; then
# 	      [[ "$verbose" == true ]] && err "$c not found"
# 	      return 1
# 	    fi
# 	  done
# 	}

# 	err() {
# 	  printf '\e[31m%s\e[0m\n' "$*" >&2
# 	}

# 	die() {
# 	  (( $# > 0 )) && err "$*"
# 	  exit 1
# 	}

# 	has -v nmcli fzf || die

# 	nmcli -d wifi rescan 2> /dev/null
	network=$(nmcli --color yes device wifi | fzf --ansi --height=40% --reverse --cycle --inline-info --header-lines=1)
	[[ -z "$network" ]] && exit
	network=$(echo "$network" | sed -r 's/^\s*\*?\s*//; s/\s*(Ad-Hoc|Infra).*//' | cut -d' ' -f3-)
	echo "connecting to \"${network}\"..."
	nmcli -a device wifi connect "$network"
}
function IpythonForSageMath() {
	ipython2
}
alias ipysage='IpythonForSageMath'
alias ipy='ipython'
# fuzzy grep open via ag
vg() {
  local file

  line="$(ag --nobreak --noheading $@ | fzf -0 -1)"
  file="$(echo $line | awk -F: '{print $1}')"
  num="$(echo $line | awk -F: '{print $2}')"

  if [[ -n $file ]]
  then
     vim $file +$num
  fi
}
# fcs - get git commit sha
# example usage: git rebase -i `fcs`
fcs() {
  local commits commit
  commits=$(git log --color=always --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e --ansi --reverse) &&
  echo -n $(echo "$commit" | sed "s/ .*//")
}
# fcoc - checkout git commit
fcoc() {
  local commits commit
  commits=$(git log --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e) &&
  git checkout $(echo "$commit" | sed "s/ .*//")
}
function gitig() {
	/usr/bin/ls -lsa | awk '{print $10}' | fzf -1 -0 -m >> .gitignore
}
# fgst - pick files from `git status -s` 
is_in_git_repo() {
  git rev-parse HEAD > /dev/null 2>&1
}
# fshow_preview - git commit browser with previews
alias glNoGraph='git log --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr% C(auto)%an" "$@"'
_gitLogLineToHash="echo {} | grep -o '[a-f0-9]\{7\}' | head -1"
_viewGitLogLine="$_gitLogLineToHash | xargs -I % sh -c 'git show --color=always % | diff-so-fancy'"

# fcoc_preview - checkout git commit with previews
fdiff() {
  local commit
  commit=$( glNoGraph |
    fzf --no-sort --reverse --tiebreak=index --no-multi \
        --ansi --preview="$_viewGitLogLine" \
	--header "enter to checkout commit" \
	--bind='alt-k:preview-up' \
	--bind='alt-j:preview-down' ) &&
  git checkout $(echo "$commit" | sed "s/ .*//")
}
fshow_preview() {
    glNoGraph |
        fzf --no-sort --reverse --tiebreak=index --no-multi \
            --ansi --preview="$_viewGitLogLine" \
                --header "enter to view, alt-y to copy hash" \
                --bind "enter:execute:$_viewGitLogLine   | less -R" \
                --bind "alt-y:execute:$_gitLogLineToHash | xclip"
}
fgst() {
  # "Nothing to see here, move along"
  is_in_git_repo || return

  local cmd="${FZF_CTRL_T_COMMAND:-"command git status -s"}"

  eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" fzf -m "$@" | while read -r item; do
    printf '%q ' "$item" | cut -d " " -f 2
  done
  echo
}

function ical() {
	curl https://p12-calendars.icloud.com/published/2/HMVuJuTKyI8mG-3nmDds3vV2kEE4RKXX6X-8fBpaUS1mOKFuXf9chkr8Eg8wnFqVPqmTcc-7l4N9q9oJtJcUrtpAIsWfm88m2ZL-zmU1m-o > $HOME/.calcurse/iphone.ics
	rm $HOME/.calcurse/iphone
	touch $HOME/.calcurse/iphone
	calcurse -c $HOME/.calcurse/iphone -i $HOME/.calcurse/iphone.ics
}

function emaillist() {
	# input: alias name, csv file with name,email_address
	emailtmp=$(mktemp /tmp/emailXXXX)
	echo "alias $1 " > $emailtmp
	# $2 is a csv file with - first_name last_name,email
	awk -F"," '{print $1"<"$2">, "}' $2 >> $emailtmp
	cat $emailtmp | tr -d "\r\n" >> $HOME/.config/neomutt/aliases
}

function csbpull() {
	 eventfile=$(mktemp /tmp/eventfileXXXX)
	 startfile=$(mktemp /tmp/eventfileXXXX)
	 endfile=$(mktemp /tmp/eventfileXXXX)
	 datefile=$(mktemp /tmp/eventfileXXXX)
	 grep -R "{'summary" $HOME/.cache/calendar.vim/google/event/6dilpp9vh271pkihp676dav8td0ttr6c%40import.calendar.google.com/*  | grep -o "'summary'.*" | grep "dateTime" | grep -o  -P ".*'start':" | cut -d" " -f2- | rev | cut -d"," -f2- | rev | tr -d "'" > $eventfile
	
	 grep -R "{'summary" $HOME/.cache/calendar.vim/google/event/6dilpp9vh271pkihp676dav8td0ttr6c%40import.calendar.google.com/*  | grep -o "'dateTime'.*" | grep -o  -P ".*'status':" | awk -F"'" '{print $4}' | awk -F"T" '{print $1,$2}' | rev | cut -c 5- | rev | awk -F"-" '{print $1,$2,$3}' | awk 'OFS="/" {print $2,$3,$1" @ "$4}' > $startfile

	grep -R "{'summary" $HOME/.cache/calendar.vim/google/event/6dilpp9vh271pkihp676dav8td0ttr6c%40import.calendar.google.com/*  | grep -o "'end': {'dateTime'.*" | grep -o  -P ".*'updated':" | awk -F"'" '{print $6}' | awk -F"T" '{print $1,$2}' | rev | cut -c 5- | rev | awk -F"-" '{print $1,$2,$3}' | awk 'OFS="/" {print $2,$3,$1" @ "$4}' > $endfile
	pr -m -t -s" -> " $startfile $endfile > $datefile
	pr -m -t -s"|csb: " $datefile $eventfile > $HOME/.calcurse/calendars/csb

}

# cat starttime | awk -F"-" '{print $1,$2,$3}' | awk 'OFS="/" {print $2,$3,$1" @ "$4}'
# cat eventname | tr -d "'"
#
function lastcommand() {
	history | tail -n 1 >> $HOME/.lastcommands
}
function back() {
	cat $HOME/.lastcommands | fzf
}

function addemail() {
	# Example: addemail "Timothy Chumley" tchumley@mtholyoke.edu
	number_temp=$(($(grep "^\[" $HOME/.abook/addressbook | tail -1 | cut -c 2- | rev | cut -c 2- | rev )+1))
	echo "\n[$number_temp]" >> $HOME/.abook/addressbook
	echo "name=$1" >> $HOME/.abook/addressbook
	echo "email=$2" >> $HOME/.abook/addressbook
}


function wifidown() {
	nmcli c down "$(nmcli c | grep -v "\-\-" | grep -v "NAME" | rev | awk '{for(i=1;i<4;i++) $i="";print}' | rev | sed 's/\s*$//')"
}
function makevideocsv() {
	cat $HOME/Documents/video_spreadsheet.csv | awk -F"," '{OFS = "," ; print $1, $5$2*3600+$3*60+$4}' > $HOME/Documents/msi_videos.csv
}
function get() {
	sudo pacman $@
}
function aur() {
	pikaur $@
}

function touchx() {
	touch $@
	chmod 777 $@
}
function touchxv() {
	touch $@
	chmod 777 $@
	vim $@
}
function makebibarticle() {
	bibfile='/home/dowewas2/bitbucket/main/refmake' 
	mrcode=$(cat $bibfile | grep "@" | awk -F'{' '{print $2}' | awk -F',' '{print $1}')
	mrfile="/home/dowewas2/bitbucket/papers/mr.pdf"
	if ls $mrfile > /dev/null 2>&1; then echo "File exists! Overwrite it!" ; elif; then touch $mrfile ;
	fi
	papis zotero $bibfile
	# papis export --all --bibtex --out $HOME/bitbucket/main/refs.bib
}
function clearpapis() {
	setopt localoptions rmstarsilent
	rm -rf $HOME/.cache/papis/*
	rm -rf $HOME/Documents/papers/*
}
function make_papis() {
	clearpapis
	$HOME/shell/makepapis.py
}
function cocalc() {
	push_file() {
		rsync -azhPv ${@} 6027544155084bcc82a8a97e2e43d76d@ssh.cocalc.com:~/
	}
	pull_file() {
		# To pull multiple file use string of file seperated by space.
		# Example: cocalc pull_fille "scores.csv hello.py"
		rsync -azhPv 6027544155084bcc82a8a97e2e43d76d@ssh.cocalc.com:~/${@} ./
	}
	start() {
		ssh 6027544155084bcc82a8a97e2e43d76d@ssh.cocalc.com
	}
	${1} ${2}
}
function bs() {
	mpv "$HOME/Downloads/Baby Shark Dance _ Sing and Dance! _ Animal Songs _ PINKFONG Songs for Children-XqZsoesa55w.mkv"
}

###################
# blank aliases
typeset -a baliases
baliases=()

balias() {
  alias $@
  args="$@"
  args=${args%%\=*}
  baliases+=(${args##* })
}

# ignored aliases
typeset -a ialiases
ialiases=()

ialias() {
  alias $@
  args="$@"
  args=${args%%\=*}
  ialiases+=(${args##* })
}

# functionality
expand-alias-space() {
  [[ $LBUFFER =~ "\<(${(j:|:)baliases})\$" ]]; insertBlank=$?
  if [[ ! $LBUFFER =~ "\<(${(j:|:)ialiases})\$" ]]; then
    zle _expand_alias
  fi
  zle self-insert
  if [[ "$insertBlank" = "0" ]]; then
    zle backward-delete-char
  fi
}
zle -N expand-alias-space

bindkey " " expand-alias-space
bindkey -M isearch " " magic-space
###################
#
function change_time_zone() {
	# Changes the timezone.
	sudo rm /etc/localtime
	timezone=$(/usr/bin/ls /usr/share/zoneinfo/America/ | fzf)
	if [[ $timezone ]]; then
		sudo ln -s /usr/share/zoneinfo/America/${timezone} /etc/localtime
		sudo ntpd -qg
		echo "\n tiemdatectl status"
		timedatectl status | grep $timezone
		echo "restart i3"
	fi
}

function gettime() {
	sudo rm /etc/localtime
	timezone="New_York"
	sudo ln -s /usr/share/zoneinfo/America/${timezone} /etc/localtime
	sudo ntpd -qg > /dev/null
	echo "\n tiemdatectl status"
	timedatectl status | grep $timezone
	echo "restart i3"
}

function get_splash_page() {
	w3m www.duckduckgo.com > /tmp/fake_splash.txt
	/usr/bin/nvim /tmp/fake_splash.txt
}
function cpusb1() {
	sudo sh -c "cp $* /mnt/usb1"
}
function openweb() {
	Apage="$HOME/bitbucket/web/derekyoungmath.github.io/rec/spring19/A/index.html"
	Bpage="$HOME/bitbucket/web/derekyoungmath.github.io/rec/spring19/B/index.html"
	qutebrowser $Apage
	qutebrowser $Bpage
}
function vga_connect() {
	xrandr --auto --output VGA1 --mode 1024x768 --right-of LVDS1
}
function vga_connect_mhc_401() {
	xrandr --output LVDS1 --auto --output VGA1 --auto
}
function vga_connect2() {
	xrandr --output LVDS1 --auto --output VGA1 --auto
}
function vga_disconnect() {
	xrandr --output LVDS1 --auto --pos 0x10
	xrandr -s 0
}
function add_latex_ignore() {
	$HOME/shell/add_latex_ignore.zsh
}
function ranword() {
	echo $@ | fold -w1 | shuf | tr -d '\n'
	echo ""
}
function record_screen() {
	file_name="screen_$(date +%d%b%Y_%M%S)"
	ffmpeg -f x11grab -s 1600x900 -i :0.0 $HOME/Videos/screen/$file_name.mkv
}
function make_all_revisions() {
  mkdir $HOME/Downloads/all_revisions
  for sha in `git rev-list HEAD -- $(pwd)`; do
      git show ${sha}:$(pwd) > $HOME/Downloads/all_revisions/${sha}_${@}
  done
}
alias makereceipt='$SCRIPTS/makereceipt'
alias acal='$SCRIPTS/addvimcal.zsh'
alias passred="PASSWORD_STORE_DIR=~/.pass/redpass"
alias passblue="PASSWORD_STORE_DIR=~/.pass/bluepass"
function dic() {
	dict $@ > /tmp/dict && nvim /tmp/dict
}
function fzfdic(){
	awk -F" " '{print $1}' /usr/share/dictd/wn.index | fzf --preview 'dict -d wn {}' --height=100% --preview-window='nohidden'
}
function geta() {
	cd $HOME/Downloads/firstsel/
	if [[ $1 == "all" ]];
	then
		python main.py ck1
		python main.py ck2
		python main.py cap1
		python main.py cap2
		python main.py amex
		python main.py chas
	else
		python main.py $1
	fi
	cd -
}
function make_tex() {
	$HOME/shell/tex.zsh $1
}
alias vf="vifm ."
alias suvf="sudo vifm ."
alias usb="sudo mount -U $(lsblk -f | ag 'sdb' | awk '{print $3}') /mnt/usb1"
alias vusb="zsh && sudo mount -U $(lsblk -f | ag 'sdb' | awk '{print $3}') /mnt/usb1 && suvf && out"
function myrand() {
	openssl rand -hex 12
}
alias getgrive="cd ~/mhc_drive/ && grive -s new && cd -"
alias getemail="cd ~/email/ && get pull && cd -"
alias bibget="$HOME/shell/bibget.zsh"

function arx() {
	llnumber=$(cat '.' ~/Downloads/arxiv2.md | fzf --height=100 --bind='alt-j:preview-down' --bind='alt-k:preview-up' --preview '$HOME/shell/arxivopen.zsh {}' --preview-window=up:90% | awk -F: '{print $1}') 
~/shell/print_arxiv.py --blocknumber=$llnumber
}

function bibref() {
	$HOME/shell/makebibstring.py
	llnumber=$(cat '.' ~/Downloads/refs.md | fzf --height=100 --bind='alt-j:preview-down' --bind='alt-k:preview-up' --preview '$HOME/shell/refsopen.zsh {}' --preview-window=up:90% | awk -F: '{print $1}') 
	~/shell/open_refs.py --blocknumber=$llnumber
}
function openbook() {
	zathura $(fd -t f .pdf ~/work/Books | fzf)
}
alias pdell='rsync -av --exclude=.git ~/all/ --delete dyoung@138.110.241.77:all/'
function ns() {
	box=$(echo 'hmail\nGmail\nPersonal\nmath' | fzf --multi --height=100%)
	threads=$(notmuch search folder:/${box}/ and ${1} | fzf --multi --height=100% --bind "enter:select-all+accept" | awk '{print $1}' | paste -s)
	notmuch tag -f_temp --  tag:f_temp
	notmuch tag +f_temp --  $threads
	tmux send-keys -t Mail:1 "Itag:f_temp and folder:/${box}/ and date:..now" C-m
	tmux select-window -t Mail:1
}
alias e='fg'
alias vm="nvim -S $HOME/.dotfiles/sessions/main.vim"
# fbr - checkout git branch
fbr() {
  local branches branch
  branches=$(git --no-pager branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# fbr - checkout git branch (including remote branches)
fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# fbr - checkout git branch (including remote branches), sorted by most recent commit, limit 30 last branches
fbr() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# fco - checkout git branch/tag
fco() {
  local tags branches target
  branches=$(
    git --no-pager branch --all \
      --format="%(if)%(HEAD)%(then)%(else)%(if:equals=HEAD)%(refname:strip=3)%(then)%(else)%1B[0;34;1mbranch%09%1B[m%(refname:short)%(end)%(end)" \
    | sed '/^$/d') || return
  tags=$(
    git --no-pager tag | awk '{print "\x1b[35;1mtag\x1b[m\t" $1}') || return
  target=$(
    (echo "$branches"; echo "$tags") |
    fzf --no-hscroll --no-multi -n 2 \
        --ansi) || return
  git checkout $(awk '{print $2}' <<<"$target" )
}


# fco_preview - checkout git branch/tag, with a preview showing the commits between the tag/branch and HEAD
fco_preview() {
  local tags branches target
  branches=$(
    git --no-pager branch --all \
      --format="%(if)%(HEAD)%(then)%(else)%(if:equals=HEAD)%(refname:strip=3)%(then)%(else)%1B[0;34;1mbranch%09%1B[m%(refname:short)%(end)%(end)" \
    | sed '/^$/d') || return
  tags=$(
    git --no-pager tag | awk '{print "\x1b[35;1mtag\x1b[m\t" $1}') || return
  target=$(
    (echo "$branches"; echo "$tags") |
    fzf --no-hscroll --no-multi -n 2 \
        --ansi --preview="git --no-pager log -150 --pretty=format:%s '..{2}'") || return
  git checkout $(awk '{print $2}' <<<"$target" )
}
function countdown(){
   date1=$((`date +%s` + $1)); 
   while [ "$date1" -ge `date +%s` ]; do 
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}
function stopwatch(){
  date1=`date +%s`; 
   while true; do 
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
    sleep 0.1
   done
}
function LD() {
	echo '' > ~/ledger/update.ledger
	ld reg --format '%-40.40(payee) %-40.40(account) _:%(date)_:%(amount)_:%(tag("UUID"))_:%(beg_line)_:%(filename)_:\n' $@ >> ~/ledger/update.ledger
}
function mp4() {
	fname=$(basename ${1})
	extension="${fname##*.}"
	fbname=${fname%.*}
	ffmpeg -i $@ -vcodec copy -acodec copy $fbname.mp4
}

function sendfile() {
	fname=$(basename ${1})
	fbname=${fname%.*}
	cp $1 $HOME/Attachments/send/$fname
}

function sendfile_rename() {
	fname=$(basename ${1})
	fbname=${fname%.*}
	read new_name
	cp $1 $HOME/Attachments/0000send/$new_name.$fbname
}
alias thefish="asciiquarium"
alias va="nvim -c 'GV --all'"
alias vs="nvim -c 'Gstatus'"
# echo "Spending energy thinking certain thoughts is a waste of energy."
alias mymem="ncdu"
alias googlecourse="cd ~/google-drive/ && grive -Ps math232_s21_4 && cd -"
alias ta="task add"
