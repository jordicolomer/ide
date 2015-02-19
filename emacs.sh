#export EMACSLOADPATH=`pwd`/ide:
#ls $EMACSLOADPATH
export PAGER=cat
xmodmap ide/.xmodmap
emacs -nw -L `pwd`/ide -l ide/.emacs
