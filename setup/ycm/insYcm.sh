git clone                                              \
         https://github.com/ycm-core/YouCompleteMe.git \
         ~/.vim/bundle/YouCompleteMe &&

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive && 
./install.py --all
