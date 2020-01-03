let g:plugged_home = '$HOME/.config/nvim/plugged'

call plug#begin(g:plugged_home)
	
  " Better Viual Guide
  Plug 'Yggdroot/indentLine'
  " --------- adding the following three plugins for Latex ---------
  Plug 'lervag/vimtex'
  Plug 'Konfekt/FastFold'
  Plug 'donRaphaco/neotex', { 'for': 'tex' }
  Plug 'matze/vim-tex-fold'

call plug#end()

filetype plugin indent on
