mkdir -p  ~/.vim/{autoload,bundle}
	
curl -LSso                       \
    ~/.vim/autoload/pathogen.vim \
    https://tpo.pe/pathogen.vim

cp .vimrc ~/.vimrc
