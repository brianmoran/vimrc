
" ---------------------------------------------------------------------
" AIRLINE
" ---------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = ' '
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ' '
let g:airline_symbols.branch = 'שׂ'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#hunks#hunk_symbols = [' ', 'ﰣ ', ' ']


" ---------------------------------------------------------------------
" LANGUAGE: GO
" ---------------------------------------------------------------------
let s:tlist_def_go_settings = 'go;g:enum;s:struct;u:union;t:type;' .
                           \ 'v:variable;f:function'
" ctags for go
let g:tagbar_type_go = {
  \ 'ctagstype' : 'go',
  \ 'kinds'     : [
    \ 'p:package',
    \ 'i:imports:1',
    \ 'c:constants',
    \ 'v:variables',
    \ 't:types',
    \ 'n:interfaces',
    \ 'w:fields',
    \ 'e:embedded',
    \ 'm:methods',
    \ 'r:constructor',
    \ 'f:functions'
  \ ],
  \ 'sro' : '.',
  \ 'kind2scope' : {
    \ 't' : 'ctype',
    \ 'n' : 'ntype'
  \ },
  \ 'scope2kind' : {
    \ 'ctype' : 't',
    \ 'ntype' : 'n'
  \ },
  \ 'ctagsbin'  : 'gotags',
  \ 'ctagsargs' : '-sort -silent'
\ }


" ---------------------------------------------------------------------
" VIM-GO
" ---------------------------------------------------------------------

" use golang language server
let g:go_def_mode="gopls"
let g:go_info_mode="gopls"

" highlighters
let g:go_def_mapping_enabled = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"  " use goimports to auto insert import paths instead of gofmt
let g:go_fmt_autosave = 1   " disable gofmt on save


" ---------------------------------------------------------------------
" FZF
" ---------------------------------------------------------------------
if has("nvim")
  au TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
endif

nnoremap <C-p> :FZF<CR>


" ---------------------------------------------------------------------
" INDENTLINE
" ---------------------------------------------------------------------
let g:indentLine_enabled = 1
autocmd Filetype json let g:indentLine_enabled = 0
set list lcs=tab:\|\ " fix for go


" ---------------------------------------------------------------------
" NERDTREE
" ---------------------------------------------------------------------
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '__pycache__$']
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 0

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1
      \ && exists("b:NERDTree")
      \ && b:NERDTree.isTabTree()) | q | endif

map <Leader>nf<CR> :NERDTreeFind<CR>

" ---------------------------------------------------------------------
" NERDCOMMENTER
" ---------------------------------------------------------------------

let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDCommentEmptyLines = 0 " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1 " Enable NERDCommenterToggle to check all selected lines is commented or not

" Comment toggle map to control-/ '_' is registered as '/'
nnoremap <C-_> :call NERDComment("n", "Toggle")<CR>
vnoremap <C-_> :call NERDComment("v", "Toggle")<CR>


" ---------------------------------------------------------------------
" NVIM-TREE
" ---------------------------------------------------------------------

" let g:nvim_tree_show_icons = {
"     \ 'git': 1,
"     \ 'folders': 0,
"     \ 'files': 0,
"     \ }

" let g:nvim_tree_icons = {
"     \ 'default': '',
"     \ 'symlink': '',
"     \ 'git': {
"     \   'unstaged': "✗",
"     \   'staged': "✓",
"     \   'unmerged': "",
"     \   'renamed': "➜",
"     \   'untracked': "★"
"     \   },
"     \ 'folder': {
"     \   'default': "",
"     \   'open': "",
"     \   'symlink': "",
"     \   }
"     \ }

" nnoremap <C-n> :NvimTreeToggle<CR>
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>

" ---------------------------------------------------------------------
" STARTIFY
" ---------------------------------------------------------------------
let g:startify_change_to_dir=0
let g:startify_change_vcs_root=1

" ---------------------------------------------------------------------
" TAGBAR
" ---------------------------------------------------------------------
map <Leader>tt<CR> :TagbarToggle<CR>


" ---------------------------------------------------------------------
" TELESCOPE
" ---------------------------------------------------------------------
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

