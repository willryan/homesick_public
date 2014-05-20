parse_git_branch() {
  brname=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')
  if [[ $brname == "(master)" ]]; then
    echo ""
  else 
    echo $brname
  fi
}

parse_git_dirty () {
  if [[ $((git status 2> /dev/null) | tail -n1) = "" ]]; then
    echo ""
  elif [[ $((git status 2> /dev/null) | tail -n1) != "nothing to commit (working directory clean)" ]]; then
    echo "✗"
  else
    echo ""
  fi
}

PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]$(parse_git_branch) \[\e[01;33m\] \[\e[00m\]\n$ '

