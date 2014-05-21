if [ "$(uname)" == "Darwin" ]; then
  alias ls="ls -GF"
else
  alias ls="ls -GF --color=auto"
fi
alias st="git status"
alias gadl="git add . -A ; git status"
alias bbn="gem install bundler; bundle"
alias gph="git push"
alias gpl="git pull"
alias gowar="java -jar *.war"
alias gcim="git commit -m"
alias giff="git diff"
alias bexec="bundle exec"
alias bruby="bundle exec ruby"
alias brails="bundle exec rails"
alias brackup="bundle exec rackup"
alias guh='git log origin/master..HEAD'
alias giton='git checkout'

alias ngspec="jruby --1.9 --ng -S rspec spec --tty --color" 

alias vihosts='sudo vim /etc/hosts'
alias vissh='vim ~/.ssh/config'

alias vg='vagrant'

if [ -f ~/.local_aliases ]; then
  . ~/.local_aliases
fi
