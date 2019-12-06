if [ "$(uname)" == "Darwin" ]; then
  alias ls="ls -GF"
else
  alias ls="ls -GF --color=auto"
fi
alias st="git status"
alias gadl="git add . -A ; git status"
alias gph="git push"
alias gpl="git pull"
alias gcim="git commit -m"
alias giff="git diff"
alias bexec="bundle exec"
alias bruby="bundle exec ruby"
alias brails="bundle exec rails"
alias guh='git log origin/master..HEAD'
alias giton='git checkout'

alias vihosts='sudo vim /etc/hosts'
alias vissh='vim ~/.ssh/config'

alias gitclean='git branch --merged | grep -Ev "(\*|master|develop)" | xargs -n 1 git branch -d; git pull --prune'

if [ -f ~/.local_aliases ]; then
  . ~/.local_aliases
fi
