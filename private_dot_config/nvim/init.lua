local plug_path = vim.fn.stdpath("data") .. "/site/autoload/plug.vim"

if vim.fn.filereadable(plug_path) == 1 then
  vim.call("plug#begin")
    vim.fn["plug#"]("folke/tokyonight.nvim")
    vim.fn["plug#"]("neovim/nvim-lspconfig")

    vim.fn["plug#"]('neovim/nvim-lspconfig')
    vim.fn["plug#"]('williamboman/mason.nvim')
    vim.fn["plug#"]('williamboman/mason-lspconfig.nvim')

    vim.fn["plug#"]('hrsh7th/nvim-cmp')
    vim.fn["plug#"]('hrsh7th/cmp-nvim-lsp')
  vim.call("plug#end")
end

vim.cmd('source ~/.config/nvim/user.lua')
vim.cmd('source ~/.config/nvim/lsp.lua')
