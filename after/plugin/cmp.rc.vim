if !exists('g:loaded_cmp') | finish | endif

set completeopt=menuone,noinsert,noselect

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

lua <<EOF
local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup({
    snippet = {
        expand = function(args)
        require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),
        ['<Tab>'] = cmp.mapping(function (fallback)
--            if luasnip.expandable() then
--                luasnip.expand()
            if cmp.visible() then
                cmp.select_next_item()
--            elseif luasnip.jumpable(1) then
--                luasnip.jump(1)
--            elseif vim.api.nvim_get_mode().mode == 'i' then
--                tabout.tabout()
            else
                fallback()
            end
        end, {'i', 's'}),
        ['<S-Tab>'] = cmp.mapping(function (fallback)
            if cmp.visible() then
                cmp.select_prev_item()
--            elseif luasnip.jumpable(-1) then
--                luasnip.jump(-1)
            else
                fallback()
            end
        end, {'i', 's'}) 
    },
    sources = cmp.config.sources(
    {
        { name = 'nvim_lsp' },
    }, {
        { name = 'buffer' },
    }),
    formatting = {
        format = lspkind.cmp_format({with_text = false, maxwidth = 50})
    }
})

vim.cmd [[highlight! default link CmpItemKind CmpItemMenuDefault]]
EOF
