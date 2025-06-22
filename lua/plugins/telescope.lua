return {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'BurntSushi/ripgrep' ,
        'nvim-telescope/telescope-fzf-native.nvim',
        'sharkdp/fd',
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find files"})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Live grep"})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Buffers"})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Help tags"})
    end,
}
-- Run 'choco install ripgrep' and 'choco install fd' to install ripgrep and fd on Windows
