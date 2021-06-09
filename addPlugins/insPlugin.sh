declare -A repos

bun=~/.vim/bundle
gh='https://github.com'

repos=(
   ['junegunn']='fzf'
   ['majutsushi']='tagbar'
   ['tpope']='vim-pathogen'
   ['scrooloose']='nerdtree'
   ['Raimondi']='delimitMate'
   ['python-mode']='python-mode'
   ['vim-airline']='vim-airline'
   ['rafi']='awesome-vim-colorschemes'
  )

# get plugin if not installed 
for i in ${!repos[@]}; do 
   [ ! -d $bun/${repos[$i]} ] &&
     git clone                    \
              $gh/$i/${repos[$i]} \
	      $bun/${repos[$i]}
done

# fzf install 
$bun/fzf/install --all

# python mode setup
cd $bun/python-mode
git submodule update --init --recursive
