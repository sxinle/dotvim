#!/bin/bash
VIM_LOCAL_PATH=~/.vim/.vlocal/

# startify
mkdir -p $VIM_LOCAL_PATH"session"

# persistent_undo
mkdir -p $VIM_LOCAL_PATH"undodir"

# yankring_history
mkdir -p $VIM_LOCAL_PATH"yankring"

# local config
touch $VIM_LOCAL_PATH"vimrc.local"
cat ~/.vim/dotvim/rc/rc.local > $VIM_LOCAL_PATH"vimrc.local"

# YouCompleteme
cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py $VIM_LOCAL_PATH"ycm_extra_conf.py"

# link theme and tern-project
ln -sf ~/.vim/dotvim/util/custom.vim ~/.vim/bundle/vim-airline/autoload/airline/themes/custom.vim
ln -sf ~/.vim/dotvim/util/tern-project ~/.tern-project

# viminfo will in this dir too
echo "==============================[ Init Complete ]==================================="
tree $VIM_LOCAL_PATH

#????
# OVER
