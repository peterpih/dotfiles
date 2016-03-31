if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# shows the entire path
# export PS1='$(pwd) \! > '
#
# Change the terminal prompt
#
#export PS1='\w \! > '
#export PATH="$HOME/.rbenv/bin:$PATH"
#
# my aliases
#
alias path="$PATH"
#
# Useful aliases when developing
#
alias startdb="postgres -D /usr/local/var/postgres"
alias openror="open ~/ror"
#
# DOS like commands
#
alias cd..="cd .."
alias cdfff="cd ~/ror/fff"
alias cdror="cd ~/ror"
#
# git aliases
#
alias gb="git branch -v"
alias gl="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias gr="git remote -v"
alias gs="git status"
alias ga="git add"
#
alias copy="cp $1 $2"
alias del="rm"
alias dir="ls -aF"
alias ren="mv"
alias sb="subl"
alias search="grep -lr !$ *"
alias type="cat"
alias up="cd .."

alias vocab="cd ~/ror/vocab-builder"
alias fff="cd ~/ror/fff"

#
# bash related commands
#
#alias nanobash="nano ~/.bash_profile"
alias sourcebash="source ~/.bash_profile"
alias editbash="sb ~/.bash_profile"
#
#
#$EDITOR="subl"
# from Dinshaw
# https://github.com/dinshaw/dotfiles/blob/master/bash/prompt
#
# prompt with ruby version
# rbenv version | sed -e 's/ .*//'
__rbenv_ps1 ()
{
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  printf $rbenv_ruby_version
}
function parse_git_dirty {
  [[ $(git status 2> /dev/null \
    | tail -n1) != "nothing to commit working directory clean" ]] && echo "*"
}
function parse_git_branch {
git branch 2> /dev/null \
  | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
# for colors:
# https://github.com/yonchu/shell-color-pallet/blob/master/color16
#
#export PS1='\[\033[37m\]$(__rbenv_ps1) \W$(parse_git_branch)$\[\033[0m\] '
export PS1='\[\033[34m\]\w\[\033[31m\]$(parse_git_branch)\[\033[0m\] \! >'

export RECAPTCHA_PUBLIC_KEY="6Le81xETAAAAAJunmB9287k9Z-SO_LlKNWcWrnnQ"
export RECAPTCHA_PRIVATE_KEY="6Le81xETAAAAAIa0rn5WfAx4l_hYqfL395BDepq6"
