export LANG=ja_JP.UTF-8
export HISTSIZE=1000
export SAVEHIST=1000000
export EDITOR=vi
export LD_LIBRARY_PATH="/usr/local/lib"
ulimit -S -c unlimited

alias ll='ls -alF'
alias lt='ls -ltr'
alias redis-cli='redis-cli --raw'

# git commit; git push;
function gco(){
 if [ "x$1" = "x" ]; then
  git commit -a
 else
  git commit -a -m "$1"
 fi
 git push -u origin master
}
alias gdf='git diff remotes/origin/master'

if [ -d $HOME/.nodebrew ]; then
 export PATH=$HOME/.nodebrew/current/bin:$PATH
fi

alias uncrustify="uncrustify -c $HOME/git/configs/uncrustify.conf --no-backup"
function pretidy(){
 prettier $1 | tidy -config $HOME/git/configs/tidy.conf > $1.pretidy
 mv $1.pretidy $1
}

if [ -f "$HOME/.bash_secures" ]; then
  . "$HOME/.bash_secures"
fi
