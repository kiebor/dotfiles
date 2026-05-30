-- =========================
-- Mason (LSP installer)
-- =========================
require("mason").setup()
require("mason-lspconfig").setup({
        ensure_installed = {
                "pyright",
                "intelephense"
        }
})

-- =========================
-- Completion (nvim-cmp)
-- =========================
local cmp = require("cmp")
local cmp_lsp = require("cmp_nvim_lsp")

cmp.setup({
        mapping = cmp.mapping.preset.insert({
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<Tab>"] = cmp.mapping.select_next_item(),
                ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),
        sources = {
                { name = "nvim_lsp" },
        },
})

-- =========================
-- LSP setup
-- =========================
local lspconfig = require("lspconfig")

local capabilities = cmp_lsp.default_capabilities()

lspconfig.pyright.setup({
        capabilities = capabilities,
})

lspconfig.intelephense.setup({})
