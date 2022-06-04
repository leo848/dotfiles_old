
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi



##### CUSTOM STUFF

update-wallpapers () {
	echo "{\"last-save\":\"\"}" > ~/Documents/Projects/wallpaper-downloader/saved.json
	python3.9 ~/Documents/Projects/wallpaper-downloader/main.py
}


open () {
    if [[ $1 == "project" ]] || [[ $1 == "p" ]]; then
        command python3.9 ~/Documents/Projects/.templates/openproject.py "$@"
    else
        command open "$@"
    fi
}


new () {
    if [[ $1 == "project" ]] || [[ $1 == "p" ]]; then
        command python3.9 ~/Documents/Projects/.templates/newproject.py "$@"
    else
        command new "$@"
    fi
}

list () {
    if [[ $1 == "projects" ]] || [[ $1 == "p" ]]; then
	for file in ~/Documents/Projects/*; do
		echo $(basename -- "$file")
	done
    else
	command list "$@"
    fi
}

_autocomplete_open () {
    local file
    # iterate all files in a directory that start with our search string
    for file in ~/Documents/Projects/"$2"*; do
        [[ -d $file ]] || continue
        COMPREPLY+=( $(basename "$file") )
    done
}

_autocomplete_new () {
    local file
    for file in ~/Documents/Projects/.projects/"$2"*; do
        [[ -d $file ]] || continue
        COMPREPLY+=( $(basename "$file"))
    done
}

alias project-open="open project" project-new="new project"

complete -F _autocomplete_open open
complete -F _autocomplete_new new


setxkbmap -option numpad:microsoft


alias caps="setxkbmap -option caps:swapescape"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion





if type ag &> /dev/null; then
	export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi

if type rg &> /dev/null; then
	export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

alias h=help

_q_gay () {
    gay -i 2d
}

quote () {
	case "$(shuf -i1-15 -n1)" in
     0) pfortune | cowsay -b | _q_gay;;
     1) pfortune | cowsay -d | _q_gay;;
     2) pfortune | cowsay -g | _q_gay;;
     3) pfortune | cowsay -p | _q_gay;;
     4) pfortune | cowsay -s | _q_gay;;
     5) pfortune | cowsay -t | _q_gay;;
     6) pfortune | cowsay -w | _q_gay;;
     7) pfortune | cowsay -y | _q_gay;;
     *) pfortune | cowsay | _q_gay;;
	esac
}

clear () {
	command clear
	quote
}
clear


EDITOR='vim'
set -o vi


for file in ~/.bash/**; do
    source $file
done
. "$HOME/.cargo/env"
