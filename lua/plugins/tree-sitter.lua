return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = { "lua", "c", "c_sharp" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
