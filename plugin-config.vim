lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

" ====================================
"            GIT SUPPORT
" ====================================
" Fugitive
nnoremap <leader>g :vert G<CR>
nnoremap <leader>gd :vert Gdiff<CR>
nnoremap <leader>gm :vert Gdiffsplit!<CR>
nnoremap <leader>gf :diffget //2 \| diffupdate<CR>
nnoremap <leader>gj :diffget //3 \| diffupdate<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gl :vert Git log<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gs :Git show HEAD~

" ====================================
"            NAVIGATION
" ====================================
" SNEAK CONFIG
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor
" sneak is back to default behavior
let g:sneak#s_next = 1

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=Cyan
highlight SneakScope guifg=red guibg=Yellow ctermfg=red ctermbg=Yellow

" QUICKSCOPE CONFIG
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=81 cterm=underline
let g:qs_max_chars=150

" ====================================
"            VIMWIKI
" ====================================
let g:vimwiki_list = [{'path': '~/Documents/vwiki/docs', 'syntax': 'markdown', 'ext': '.md'},
                    \ {'path': '~/Documents/vwiki/work', 'syntax': 'markdown', 'ext': '.md'},
                    \ {'path': '~/Documents/vwiki/personal', 'syntax': 'markdown', 'ext': '.md'}]

" Vimwiki has a feature that will treat every file with
" configured file-extension as a wiki. Enable with:
let g:vimwiki_global_ext = 1

nnoremap ]l <Plug>VimwikiNextLink
nnoremap [l <Plug>VimwikiPrevLink

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END
" ====================================
"            MARKDOWN
" ====================================
" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
" let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
" let g:mkdp_open_ip = ''

let g:mkdp_page_title = '${name}'
let g:mkdp_browser = 'qutebrowser'

" ====================================
"            INDENTLINE
" ====================================
nnoremap <F10> :IndentLinesToggle<CR>

" ====================================
"            HARPOON
" ====================================
" --  Terminal commands
" --  ueoa is first through fourth finger left hand home row.
" --  This just means I can crush, with opposite hand, the 4 terminal positions

nnoremap <leader>m :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>' :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>tu :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

nnoremap <C-h> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <C-j> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <C-k> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <C-l> :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>tj :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <leader>tk :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <leader>cj :lua require("harpoon.term").sendCommand(1, 1)<CR>
nnoremap <leader>ck :lua require("harpoon.term").sendCommand(1,2)<CR>

lua <<EOF
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
EOF

" Using Lua functions
nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>rg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" See `:help vim.lsp.*` for documentation on any of the below functions
nnoremap gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap K <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap gi <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <leader>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
" nnoremap <leader>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
" nnoremap <leader>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
" nnoremap <leader>D' <cmd>lua vim.lsp.buf.type_definition()<CR>
" nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
" nnoremap <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>
" nnoremap gr <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <leader>e cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
" nnoremap <leader>q <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
" nnoremap <leader>f <cmd>lua vim.lsp.buf.formatting()<CR>
