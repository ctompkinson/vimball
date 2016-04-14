# Vimball
Automatic installation of a sane vim setup with various plugins
## Installation
1. Recursively clone this repository (Otherwise git submodule will not be cloned)
	* `git clone --recursive https://github.com/ctompkinson/vimball.git`
2. Run installation script
	* `./install.sh`

## Plugins
- [bufexplorer](https://github.com/jlanzarotta/bufexplorer.git)
- [ctrlp](https://github.com/kien/ctrlp.vim)
- [Dockerfile](https://github.com/ekalinin/Dockerfile.vim.git)
- [Gundo](https://github.com/sjl/gundo.vim.git)
- [NerdCommenter](https://github.com/scrooloose/nerdcommenter.git)
- [NerdTree](https://github.com/scrooloose/nerdtree.git)
- [Supertab](https://github.com/ervandew/supertab.git)
- [Syntastic](https://github.com/scrooloose/syntastic.git)
- [Taglist](https://github.com/vim-scripts/taglist.vim.git)
- [Airline](https://github.com/vim-airline/vim-airline.git)
- [Cucumber](https://github.com/tpope/vim-cucumber.git)
- [Endwise](https://github.com/tpope/vim-endwise.git)
- [Fugutive](https://github.com/tpope/vim-fugitive.git)
- [Go](https://github.com/fatih/vim-go.git)
- [Json](https://github.com/leshill/vim-json.git)
- [Markdown](https://github.com/plasticboy/vim-markdown.git)
- [Repeat](https://github.com/tpope/vim-repeat.git)
- [Ruby](https://github.com/vim-ruby/vim-ruby.git)
- [SnipMate](https://github.com/garbas/vim-snipmate)
- [Surround](https://github.com/tpope/vim-surround.git)
- [Userstories](https://github.com/pk/vim-userstories.git)
- [Yaml](https://github.com/stephpy/vim-yaml.git)
- [Wombat](https://github.com/vim-scripts/Wombat.git)
	- Uses modified scheme for vimdiff

## Bindings
- Enable list mode
	- Leader L
- Run indent on buffer
	- Leader i
- Toggle Gundo
	- Leader u
- Toggle Git Blame
	- Leader b
- Toggle paste mode
	- Leader p
- Re-source vim profile
	- Leader r
- Toggle line numbers
	- Leader N
- Toggle NERDTree file browser
	- Leader nt
- New Tab
	- Leader tn
- New veritcal split pane with empty buffer
	- Leader v
- New horizontal split pane with empty buffer
	- Leader V
- Quit
	- Leader q
- Force quit
	- Leader Q
- Write
	- Leader w
- Force write
	- Leader W
- Replace tabs with four spaces
	- Leader ct
- Toggle tag list
	- Leader tl
- Run yaml-lint on buffer
	- Leader yl
- Open file fuzzy matcher
	- Leader f
- Start force edit command
	- Leader e
- Toggle Cursor line
	- Leader ch
- Create commented title
	- Leader tt
- Create bold commented title
	- Leader tb
- Create underline
	- Leader tu
- Insert Snippets
	- Leader ss
- Open todo file
	- Leader to
- Run shell and output in new pane
	- Leader !
- Toggle Line Wrapping
	- Leader lw
- Allow easy pane switching with ctrl direction
	- Ctrl-hjkl
- Quick pane resizing
	- Leader z
	- Leader x
	- Leader Z
	- Leader X
