return {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local lspconfig = require("lspconfig")

        lspconfig.lua_ls.setup({
            capabilities = capabilities,
        })
        lspconfig.jdtls.setup({
            capabilities = capabilities,
        })
        lspconfig.clangd.setup({
            capabilities = capabilities,
        })
        lspconfig.neocmake.setup({
            capabilities = capabilities,
        })
        lspconfig.pyright.setup({
            capabilities = capabilities,
        })
        lspconfig.dockerls.setup({
            capabilities = capabilities,
        })
        lspconfig.docker_compose_language_service.setup({
            capabilities = capabilities,
        })
        lspconfig.dockerls.setup({
            capabilities = capabilities,
        })

        vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, {})
    end,
}
