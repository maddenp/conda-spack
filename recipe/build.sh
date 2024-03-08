set -eux

rsync -a $SRC_DIR/{bin,etc,lib,share,var} $PREFIX/
rsync -a $RECIPE_DIR/etc/ $PREFIX/etc/
