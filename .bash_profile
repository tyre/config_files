export EDITOR="subl -w"
export PATH=$PATH:/Users/chrismaddox/.rvm/gems/ruby-1.9.3-p125/bin/
source ~/.rvm/scripts/rvm


alias rmrf="rm -rf"
alias hungry="cd ~/Dropbox/LivingSocial/Hungry\ Academy"
alias bp="subl ~/.bash_profile"
alias upsource='source ~/.bash_profile'

#Testing
alias rtest="rspec --colour --format=d"
alias guard="bundle exec guard"

#Git aliases
alias gcl='git clone'
alias gs='git status'
alias gl='git pull'
alias gp='git push'
alias gpom='git push origin master'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gcm='git commit -v -m'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias go='git checkout'
alias grb='git rebase'
alias gre='git remote'
alias gres='git remote -v show'
alias grea='git remote add'
alias grer='git remote rm'
alias gf='git fetch'
alias ga='git add'
alias gaa='git add -A'
alias ganm='git add .' # add new or modified
alias gamr='git add -u' # add modified or removed
alias gsa='git stash apply'
alias glo='git log'
alias gm='git merge'
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '
alias gmv='git mv'
alias gist='git hist'
alias gnr="curl -F 'login=tyre' -F 'token=f89b80f938605a881a944ac3cad4a378' https://github.com/api/v2/yaml/repos/create -F"

#Rails

alias migrate='rake db:migrate db:test:prepare'

#Menus
export RUBYOPT=-Itest

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;36m\]"
PINK="\[\033[0;35m\]"
WHITE="\[\033[1;37m\]"
BLACK="\[\033[0;30m\]"
OFF="\[\033[0m\]"

# Download git-completion from https://github.com/rtomayko/dotfiles/blob/rtomayko/.bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-completion.bash
export PS1="$YELLOW\$(~/.rvm/bin/rvm-prompt) $BLUE\W $PINK\$(__git_ps1 "[%s]")$OFF \$ "
      # Add the following to your ~/.bashrc or ~/.zshrc
      hitch() {
        command hitch "$@"
        if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
      }
      alias unhitch='hitch -u'
      # Uncomment to persist pair info between terminal instances
      # hitch

