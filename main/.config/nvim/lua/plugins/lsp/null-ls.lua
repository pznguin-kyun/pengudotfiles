local setup, null_ls = pcall(require, "null-ls")
if not setup then
    return
end

local formatting = null_ls.builtins.formatting   -- to setup formatters
local diagnostics = null_ls.builtins.diagnostics -- to setup linters

null_ls.setup({
    debug = true,
    sources = {
        -- Webdev stuff
        formatting.deno_fmt.with({ extra_args = { "--style", "{IndentWidth: 4}" } }),
        formatting.prettier.with({ extra_args = { "--style", "{IndentWidth: 4}" } }),

        -- Lua
        formatting.stylua.with({ extra_args = { "--style", "{IndentWidth: 4}" } }),

        -- Cpp, C with indent width 4
        formatting.clang_format.with({ extra_args = { "--style", "{IndentWidth: 4}" } }),

        -- Python
        formatting.black.with({ extra_args = { "--style", "{IndentWidth: 4}" } }),

        -- JS/TS Linter
        diagnostics.eslint_d.with({
            condition = function(utils)
                return utils.root_has_file(".eslintrc.js")
            end,
        }),
        -- Gitsigns
        null_ls.builtins.code_actions.gitsigns,
    },
})
