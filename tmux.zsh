#!/bin/zsh

function i3_window() {
	#i3:window:

	session="${1}"

	function Calcurse() {
		#i3:Calcurse:
		# Create a new tmux session
		tmux new-session -d -s $session -n calcurse
		# /home/dowewas2/shell/cal_neovim.py current_appointment --sch='/home/dowewas2/calendar/year2020.cal'
		tmux send-keys "nocorrect vim -c Calendar"
		# New window
		tmux new-window -t $session -a -n vim-cal
		tmux select-pane -t 1
		# tmux send-keys "nvim -S $HOME/.dotfiles/sessions/calendar.vim" C-m
		tmux send-keys "/home/dowewas2/shell/cal_neovim.py current_appointment --sch='/home/dowewas2/calendar/year2021.cal' && nvim -S $HOME/.dotfiles/sessions/calendar.vim -c '3SpeedDatingFormat %I:%M%?[ ]%^P'" C-m
		# New window
		# Select window
		tmux select-window -t $session:2 # opens at given value window
	}
	function News() {
		#i3:News:
		# Create a new tmux session
		tmux new-session -d -s $session -n newsboat
		tmux send-keys "newsboat" C-m
	}
	function Ledger() {
		#i3:Ledger:
			# Create a new tmux session
			tmux new-session -d -s $session -n ledger
			tmux send-keys "vim $HOME/ledger/commands.ledger -S $HOME/.dotfiles/sessions/ledger.vim" C-m
	}
	function Scripts() {
		#i3:Scripts:
		# Create a new tmux session
		tmux new-session -d -s $session -n scripts
		tmux send-keys "vim -S $HOME/.dotfiles/sessions/sage.vim"  C-m
	}
	function Sage() {
		#i3:Sage:
		# Create a new tmux session
		tmux new-session -d -s $session -n sage
		tmux send-keys "cd $HOME/.sage && sage -q" C-m #C-m # C

		# New window 
		tmux new-window -t $session -a -n ipython
		tmux send-keys "cd $HOME/.sage && sage -q -ipython" # open sage
		tmux select-window -t $session:1 # Opens at given value window.
	}
	function Mail() {
		#i3:Mail:
		# Create a new tmux session
		tmux new-session -d -s $session -n hmail
		tmux send-keys "cd ~/Attachments && neomutt -F ~/.config/neomutt/neomuttrc" C-m
	}
	function Tex() {
		#i3:Tex:
		# Create a new tmux session
		tmux new-session -d -s $session -n main
		rmcheck="/tmp/maintex"
		if [[ $rmcheck ]]
		then
			rm $rmcheck
		fi
		tmux send-keys "NVIM_LISTEN_ADDRESS=/tmp/maintex nvim -S $HOME/.dotfiles/sessions/tex.vim" C-m

		# tmux send-keys "NVIM_LISTEN_ADDRESS=/tmp/maintex nvim -p ~/bitbucket/main/main.tex ~/bitbucket/main/temp/temp.tex ~/bitbucket/research/journal/journal.tex" C-m
		tmux select-window -t $session:1 # Opens at given value window.
	}
	function Dech() {
		#i3:Dech:
		# Create a new tmux session
		tmux new-session -d -s $session -n dech
		tmux send-keys "vim -S $HOME/.dotfiles/sessions/dech.vim" C-m
	}
	function Myhtml() {
		#i3:Myhtml:
		# Create a new tmux session
		tmux new-session -d -s $session -n html
		tmux send-keys "vim -S $HOME/.dotfiles/sessions/course.vim" C-m
	}


	check=$(tmux list-session | grep $session)
	if [[ $check ]]
	then
		tmux_title="i3-msg '[title=\"${session}\"] focus'"
		tmux_value=$(tmux list-session | ag "attached" | ag "${session}")
		# tmux_value=$(i3-msg -t get_tree | sed 's/,/\n/g' | ag "\"title\":\"${session}\"")
		if [[ $tmux_value ]]
		then
			echo $tmux_title > ~/file.txt
			eval $tmux_title
		else
			eval $tmux_title
			tmux attach-session -t $session
		fi
	else
		# set up tmux
		tmux start-server
		${1}
		tmux -2 attach -t $session # -2 is for colors in tmux
	fi
}

function i3_block() {
	#i3:block:

	session="${1}"

	function Papis() {
		#i3:Papis:
		# Create a new tmux session
		tmux new-session -d -s $session -n papis
		tmux send-keys "papis open" C-m
	}
	function Refs() {
		#i3:Refs:
		# Create a new tmux session
		tmux new-session -d -s $session -n refs
		tmux send-keys "$HOME/shell/openpdf.zsh openref" C-m
	}
	function Refsup() {
		#i3:Refsup:
		# Create a new tmux session
		tmux new-session -d -s $session -n refs
		tmux send-keys "$HOME/shell/openpdf.zsh openrefupdate" C-m
	}
	function Music() {
		#i3:Music:
		# Create a new tmux session
		tmux new-session -d -s $session -n music
		tmux send-keys "mpd ~/.config/mpd/mpd.conf && ncmpcpp" C-m
	}
	function Books() {
		#i3:Books:
		# Create a new tmux session
		tmux new-session -d -s $session -n bib
		tmux send-keys "$HOME/shell/openpdf.zsh openbook" C-m
	}
	function SendFile() {
		#i3:Books:
		# Create a new tmux session
		tmux new-session -d -s $session -n bib
		tmux send-keys "$HOME/shell/openpdf.zsh sendfile_rename" C-m
	}
	function Nvim() {
		#i3:Nvim:
		# Create a new tmux session
		tmux new-session -d -s $session -n nvim
		tmux send-keys "vim -S $HOME/.dotfiles/sessions/main.vim" C-m
	}
	function Myvim() {
		#i3:Myvim:
		# Create a new tmux session
		tmux new-session -d -s $session -n myvim
		tmux send-keys "vim -S $HOME/.dotfiles/sessions/main.vim" C-m
	}
	function Msearch() {
		#i3:Mailsearch:
		# Create a new tmux session
		tmux new-session -d -s $session -n msearch
		tmux send-keys "vim $HOME/cache/filters/main -c 'set ft=fzfnotmuch'" C-m
	}
	function Minbox() {
		#i3:Mailinbox:
		# Create a new tmux session
		tmux new-session -d -s $session -n minbox
		tmux send-keys "~/shell/neomutt_tags.zsh not_archived" C-m
	}
	function Mapt() {
		#i3:Mailapt:
		# Create a new tmux session
		tmux new-session -d -s $session -n mapt
		tmux send-keys "$HOME/shell/mutttagvim.zsh openaptfile" C-m
	}
	function Task() {
		#i3:Task:
		# Create a new tmux session
		tmux new-session -d -s $session -n task
		tmux send-keys "nvim $HOME/calendar/list/tw.md" C-m
	}
	function Keys() {
		#i3:Keys:
		# Create a new tmux session
		tmux new-session -d -s $session -n keys
		tmux send-keys "pass edit keys" C-m
	}
	function Jour() {
		#i3:Jour:
		# Create a new tmux session
		tmux new-session -d -s $session -n keys
		tmux send-keys "pass edit pass7" C-m
	}
	function nTerminal() {
		#i3:nTerminal:
		# Create a new tmux session
		tmux new-session -d -s $session -n nterminal
		# tmux send-keys "date" C-m
	}
	function Myterm() {
		#i3:Myterm:
		# Create a new tmux session
		tmux new-session -d -s $session -n myterm
		# tmux send-keys "date" C-m
	}
	function Man() {
		#i3:Man:
		# Create a new tmux session
		tmux new-session -d -s $session -n man
	}
	function Ipython() {
		#i3:Ipython:
		# Create a new tmux session
		tmux new-session -d -s $session -n ipython
		tmux send-keys "cd $HOME/.sage && sage -q" C-m
		tmux split-window -p 50 'nvim ~/cache/ipy.py'
	}
	function Vifm() {
		#i3:Vifm:
		# Create a new tmux session
		tmux new-session -d -s $session -n vifm
		tmux send-keys "vifm ~/Downloads" C-m
	}
	function Pane() {
		#i3:Pane:
		# Create a new tmux session
		tmux new-session -d -s $session
		tmux send-keys "vim ${2}" C-m # vim
	}


	check=$(tmux list-session | grep $session)
	if [[ $check ]]
	then
		tmux attach-session -t $session
	else
		# set up tmux
		tmux start-server
		${1}
		tmux -2 attach -t $session # -2 is for colors in tmux
	fi
}

function i3_tmux_info() {
	#i3:tmux_info:

	tmuxid=$(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')
	tmuxsession=$(xprop -id $tmuxid | awk '/_NET_WM_NAME/{$1=$2="";print}' | cut -d'"' -f2)
	tmuxwindow=$(tmux list-window -a | ag $tmuxsession | ag "\*" | cut -d':' -f2 | sed 's/\*//g')

}

function i3_mutt_keys() {
	#i3:mutt_keys:

	i3_tmux_info

	function tagtemp() {
		#i3:tagemp:
		tmux send-keys -t Mail:hmail 'y+temp' C-m 
		sleep 0.1
		sender="$(notmuch show --format=text tag:temp | ag "^From:" | cut -d' ' -f2-)"
		filter="\\\\from:$sender date:..now"
		tmux send-keys -t Mail:hmail $filter C-m
		notmuch tag -temp -- tag:temp
	}

	function gototag() {
		#i3:gototag:
		tmux move-window -h -p 25 -t Mail -t ${tmuxsession}:${tmuxwindow}
		tmux send-keys -t ${tmuxsession}:1 '~/shell/neomutt_tags.zsh tag_email' C-m
	}

	function gotoinbox() {
		#i3:gotoinbox:
		filter="\\\\tag:inbox date:..now"
		tmux send-keys -t ${tmuxsession}:${tmuxwindow} ${filter} C-m
	}

	${1} ${2}
}

function i3_tmux_keys() {
	#i3:tmux_keys:

	i3_tmux_info

	function switchpane() {
		#i3:switchpane:
		tmux select-window -t ${tmuxsession}:${1}
	}

	function killpane() {
		#i3:killpane:
		tmux kill-pane -t ${tmuxsession}:${tmuxwindow}
	}

	function killsession() {
		#i3:killsession:
		tmux kill-session -t ${tmuxsession}
	}

	function openwindow() {
		#i3:openwindow:
		tmux new-window -c "#{pane_current_path}" -t ${tmuxsession}
	}

	function openvim() {
		#i3:openvim:
		tmux new-window -c "#{pane_current_path}" -t ${tmuxsession} 'nvim -c MyFZF'
	}

	function openvifm() {
		#i3:openvifm:
		tmux new-window -c "#{pane_current_path}" -t ${tmuxsession} 'vifm .'
	}

	function openfigs() {
		#i3:openfigs:
		tmux new-window -t ${tmuxsession}
	}

	function openfiguress() {
		#i3:openfiguress:
		tmux new-window -c 'cd ~/Attachments && neomutt'
	}

	function addappointment() {
		#i3:addappointment:
		tmux split-window -p 25 -c '~/calendar/addmuttevent/temp_cal_fzf.zsh'
	}

	function fzfurl() {
		#i3:fzfurl:
		tmux run-shell -b '~/.tmux/plugins/tmux-fzf-url/fzf-url.sh'
	}

	${1} ${2}

}

function i3_neomutt() {
	#i3:neomutt:
	tmux split-window -h -p 25 -t Mail:1
	tmux send-keys -t Mail:1.1 'nvim /home/dowewas2/cache/notmuch_tags' C-m
}

function Zoom() {
	#open zoom
	#kill zoom
}

${1} ${2} ${3}
