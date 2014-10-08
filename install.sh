curl -L http://install.ohmyz.sh | sh

if uname | grep -q Darwin
then
  mv -f ~/.vimrc ~/.vimrc.old;
  cp -f ./.vimrc_mac ~/.vimrc;
  mv -f ~/.zshrc ~/.zshrc.old;
  cp -f ./.zshrc_mac ~/.zshrc;
fi

if uname | grep -q Linux
then
  mv -f ~/.vimrc ~/.vimrc.old;
  cp -f ./.vimrc_linux ~/.vimrc;
  mv -f ~/.zshrc ~/.zshrc.old;
  cp -f ./.zshrc_linux ~/.zshrc;
fi

source ~/.zshrc

# vim config
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
