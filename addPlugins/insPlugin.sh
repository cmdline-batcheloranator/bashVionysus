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
getPlugin() {
  [ ! -d $bun/${repos[$1]} ] &&
   git clone           \
   $gh/$i/${repos[$i]} \
   $bun/${repos[$i]}
 }

export -f getPlugin

parallel -j 0 getPlugin ::: "${repos[@]"

# fzf install 
$bun/fzf/install --all

# python mode setup
cd $bun/python-mode
git submodule update --init --recursive
