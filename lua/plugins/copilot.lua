return {
    "github/copilot.vim",
    config = function()
        vim.cmd('colorscheme tokyonight-night')

        vim.keymap.set("i", "<C-L>x", "<Plug>(copilot-dismiss)", { desc = "Copilot Dismiss", noremap = true, silent = true })
        vim.keymap.set("i", "<C-L>a", "<Plug>(copilot-suggest)", { desc = "Copilot Suggest", noremap = true, silent = true })
        vim.keymap.set("i", "<C-L>w", "<Plug>(copilot-accept-word)", { desc = "Copilot Accept Word", noremap = true, silent = true })
        vim.keymap.set("i", "<C-L>n", "<Plug>(copilot-next)", { desc = "Copilot Next Suggestion", noremap = true, silent = true })
        vim.keymap.set("i", "<C-L>p", "<Plug>(copilot-previous)", { desc = "Copilot Previous Suggestion", noremap = true, silent = true })
        vim.keymap.set("i", "<C-L>l", "<Plug>(copilot-accept-line)", { desc = "Copilot Accept Line", noremap = true, silent = true })
    end,
}
-- Run `:Copilot setup` to configure Copilot settings.
