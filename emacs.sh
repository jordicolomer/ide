#export EMACSLOADPATH=`pwd`/ide:
#ls $EMACSLOADPATH
xmodmap ide/.xmodmap
emacs -nw -L `pwd`/ide -l ide/.emacs
