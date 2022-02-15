local nvim_lsp = require('lspconfig')

-- Mappings.
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- " See `:help vim.lsp.*` for documentation on any of the below functions
-- " nnoremap <leader>q <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
-- " nnoremap <leader>f <cmd>lua vim.lsp.buf.formatting()<CR>
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      -- vim.keymap.set("n", "K", vim.lsp.buf.hover(), {buffer=0})
      -- buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
      -- buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
      -- buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
      -- buf_set_keymap('n', 'gI', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
      -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
      -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
      -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
      -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
      -- buf_set_keymap('n', 'gT', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
      -- buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
      -- buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
      -- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
      -- buf_set_keymap('n', 'gl', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts) TODO: check keybinding
      -- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
      -- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
      -- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
      -- buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
    -- end

    -- Custom diagnostic display
    vim.diagnostic.config({
        virtual_text = false,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = false,
        float = {
            source = "always",
            border = "single"
        }
    })

    -- show line diagnostics automatically in hover window
    vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

    -- highlight line number instead of having icons in sign column
    vim.cmd [[
      highlight DiagnosticLineNrError  guifg=#FF0000 gui=bold
      highlight DiagnosticLineNrWarn guifg=#FFA500 gui=bold
      highlight DiagnosticLineNrInfo guifg=#00FFFF gui=bold
      highlight DiagnosticLineNrHint guifg=#0000FF gui=bold

      sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
      sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
      sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
      sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
    ]]

    -- Setup nvim-cmp.
    -- local cmp = require'cmp'

--     cmp.setup({
--     snippet = {
--       expand = function(args)
--         -- For `luasnip` user.
--         require('luasnip').lsp_expand(args.body)
--       end,
--     },
--     mapping = {
--         ['<C-p>'] = cmp.mapping.select_prev_item(),
--         ['<C-n>'] = cmp.mapping.select_next_item(),
--         ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--         ['<C-f>'] = cmp.mapping.scroll_docs(4),
--         ["<Tab>"] = cmp.mapping(function(fallback)
--           if cmp.visible() then
--             cmp.select_next_item()
--           elseif luasnip.expandable() then
--             luasnip.expand()
--           elseif jumpable() then
--             luasnip.jump(1)
--           elseif check_backspace() then
--             fallback()
--           else
--             fallback()
--           end
--         end, {
--           "i",
--           "s",
--         }),
--         ["<S-Tab>"] = cmp.mapping(function(fallback)
--           if cmp.visible() then
--             cmp.select_prev_item()
--           elseif jumpable(-1) then
--             luasnip.jump(-1)
--           else
--             fallback()
--           end
--         end, {
--           "i",
--           "s",
--         }),
--         ['<C-Space>'] = cmp.mapping.complete(),
--         ['<C-e>'] = cmp.mapping.close(),
--         ['<CR>'] = cmp.mapping.confirm {
--           behavior = cmp.ConfirmBehavior.Replace,
--           select = true,
--         },
--         -- ['<Tab>'] = function(fallback)
--         --   if cmp.visible() then
--         --     cmp.select_next_item()
--         --   elseif luasnip.expand_or_jumpable() then
--         --     luasnip.expand_or_jump()
--         --   else
--         --     fallback()
--         --   end
--         -- end,
--         -- ['<S-Tab>'] = function(fallback)
--         --   if cmp.visible() then
--         --     cmp.select_prev_item()
--         --   elseif luasnip.jumpable(-1) then
--         --     luasnip.jump(-1)
--         --   else
--         --     fallback()
--         --   end
--         -- end,
--     },
--     sources = {
--       { name = 'nvim_lsp' },

      -- For vsnip user.
      -- { name = 'vsnip' },

      -- For luasnip user.
      -- { name = 'luasnip' },

      -- For ultisnips user.
      -- { name = 'ultisnips' },

--       { name = 'buffer' },
--     }
--     })

--     local function config(_config)
--     return vim.tbl_deep_extend("force", {
--         capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--     }, _config or {})
--     end

    -- Setup lspconfig.
    -- require'lspconfig'.gopls.setup(config({
    -- cmd = {"gopls", "serve"},
    -- settings = {
    --     gopls = {
    --         analyses = {
    --             unusedparams = true,
    --         },
    --         staticcheck = true,
    --     },
    -- },
    -- }))

    -- Enable the following language servers
    local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'gopls' }
    for _, lsp in ipairs(servers) do
      nvim_lsp[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }
    end
