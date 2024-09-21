return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "csharp_ls", "omnisharp", "powershell_es"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local pid = vim.fn.getpid()
            local omnisharp_bin = "C:\\Users\\kasaxena\\AppData\\Local\\nvim-data\\mason\\packages\\omnisharp\\omnisharp.cmd"
            lspconfig.omnisharp.setup({
                cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
            })
            lspconfig.lua_ls.setup({})
            lspconfig.powershell_es.setup({
                bundle_path = 'C:\\PowerShellEditorServices',
            })
        end
    }
}
