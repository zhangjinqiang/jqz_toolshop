if [ -e ~/.vim/autoload/plug.vim ]; then
  echo "plug.vim is already there, skipping."
else
  echo 'installing plug.vim'
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


if cat ~/.vimrc | grep 'source ~/jqz_toolshop/dotfiles/vimrc' &> /dev/null; then
    echo "vimrc is already configured, skipping."
else
    echo 'source ~/jqz_toolshop/dotfiles/vimrc' >> ~/.vimrc
fi
