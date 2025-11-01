" Uses correct fonts
let g:airline_powerline_fonts = 1

" Sets tab size
set tabstop=4

" Disables mouse
set mouse=
set ttymouse=

" Disables arrow keys
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
  exec 'noremap' key '<Nop>'
  exec 'inoremap' key '<Nop>'
  exec 'cnoremap' key '<Nop>'
endfor

" Shows Line Numbers
set number

" Plugins
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nordtheme/vim'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

" Sets colorscheme.
colorscheme nord

" Enables C++ syntax highlighting features.
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" Refresh NERDTree when a file is saved.
autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p
