pkgs=(
  'go'
  'mono'
  'ctags'
  'cmake'
  'nodejs'
  'python'
  'vim --HEAD'
 )

parallel -j 0 brew install ::: ${pkgs[@]}
