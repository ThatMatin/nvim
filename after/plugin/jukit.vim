let g:jukit_highlight_markers = 1
"    - Whether to highlight cell markers or not. You can specify the colors of cell markers by putting e.g. `highlight jukit_cellmarker_colors guifg=#1d615a guibg=#1d615a ctermbg=22 ctermfg=22` with your desired colors in your (neo)vim config. Make sure to define this highlight *after* loading a colorscheme in your (neo)vim config
let g:jukit_enable_textcell_bg_hl = 1
"    - Whether to highlight background of textcells. You can specify the color by putting `highlight jukit_textcell_bg_colors guibg=#131628 ctermbg=0` with your desired colors in your (neo)vim config. Make sure to define this highlight group *after* loading a colorscheme in your (neo)vim config.
let g:jukit_enable_textcell_syntax = 1
"    - Whether to enable markdown syntax highlighting in textcells
let g:jukit_text_syntax_file = $VIMRUNTIME . '/syntax/' . 'markdown.vim'
"    - Syntax file to use for textcells. If you want to define your own syntax matches inside of text cells, make sure to include `containedin=textcell`.
let g:jukit_hl_ext_enabled = '*'
"    - String or list of strings specifying extensions for which the relevant highlighting autocmds regarding marker-highlighting, textcell-highlighting, etc. will be created. For example, `let g:jukit_hl_extensions=['py', 'R']` will enable the defined highlighting options for `.py` and `.R` files. Use `let g:jukit_hl_extensions='*'` to enable them for all files and `let g:jukit_hl_extensions=''` to disable them completely"

highlight jukit_cellmarker_colors guifg=#1d615a guibg=#1d615a ctermbg=22 ctermfg=22
highlight jukit_textcell_bg_colors guibg=#131628 ctermbg=0
let g:jukit_savefig_dpi = 150
"    - Value for `dpi` argument for matplotlibs `savefig` function
let g:jukit_mpl_block = 0
"    - If set to 0, then `plt.show()` will by default be executed as if `plt.show(block=False)` was specified
let g:jukit_custom_backend = -1
"    - Custom matplotlib backend to use
" You can define a custom split layout as a dictionary, the default is:
let g:jukit_layout = {
    \'split': 'vertical',
    \'p1': 0.4, 
    \'val': [
        \'file_content',
        \{
            \'split': 'vertical',
            \'p1': 0.4,
            \'val': ['output', 'output_history']
        \}
    \]
\}

nnoremap <leader>cS :call jukit#send#line()<cr>
vnoremap <leader>cS :<C-U>call jukit#send#selection()<cr>

