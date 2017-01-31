export PATH=$HOME/.anyenv/bin:$PATH
eval "$(anyenv init -)"

export PATH="~/bin:$PATH"
eval "$(hub alias -s)"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# aliases
alias ll='ls -l'
alias la='ls -la'
alias vi='vim'
#alias emacs='emacs-25.1'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gs='git status'
alias gcm='git checkout master'
alias gpom='git pull origin master'
alias gmm='git merge master'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  # git prompt script 
  . ~/.git-prompt.sh
  # git prompt setting
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUPSTREAM=1
  GIT_PS1_SHOWUNTRACKEDFILES=1
  GIT_PS1_SHOWSTASHSTATE=1
  # prompt
  PROMPT_COMMAND='PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\[\033[1;31m\]$(__git_ps1)\[\033[0;33m\]\$\[\033[00m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'
else
  # prompt
  PROMPT_COMMAND='PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u.\h: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
