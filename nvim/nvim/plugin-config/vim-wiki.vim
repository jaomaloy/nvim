let g:vimwiki_list = [{'path': '~/Documents/vwiki/', 'syntax': 'markdown', 'ext': '.md'},
                   \ {'path': '~/Documents/vwiki/dev', 'syntax': 'markdown', 'ext': '.md'}]

" Vimwiki has a feature that will treat every file with
" configured file-extension as a wiki. Disable with:
let g:vimwiki_global_ext = 0

nmap <C-TAB> <Plug>VimwikiNextLink
nmap <C-S-TAB> <Plug>VimwikiPrevLink
