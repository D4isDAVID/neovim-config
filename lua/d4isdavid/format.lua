local null_ls = require('null-ls')

null_ls.setup({
    sources = {
        null_ls.builtins.completion.luasnip,
        null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.commitlint,
        null_ls.builtins.diagnostics.luacheck,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,
    },
})
