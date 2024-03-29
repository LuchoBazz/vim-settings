# Competitive Programming Setting

* Instalar Vim
* Clonar Vundle

```shell
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

* Ejecutar `:PluginInstall!`

```vim
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
```

* Instalar complemento de vim

```shell
sudo apt install vim-gtk3
```

* Para Plugin de Template
```shell
cd cp-settings
cp -r VimTemplate ~/.vim/VimTemplate
cp -r UltiSnips ~/.vim/UltiSnips
cp .vimrc ~/.vimrc
```

* Install [cpbooster](https://github.com/searleser97/cpbooster)

- [Get Started - Installation](https://searleser97.github.io/cpbooster/docs/installation)

```shell
cd cp-settings
cp cpbooster-config.json ~/cpbooster-config.json
# Move templates to ~/cpb folder
mkdir ~/.cpb
```

#### Referencia
[marblestation vimrc](https://www.marblestation.com/?p=910)