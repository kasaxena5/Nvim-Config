return {
    {
        'mfussenegger/nvim-dap',
        config = function()
            local dap = require('dap')

            dap.adapters.coreclr = {
                type = 'executable',
                command = 'C:\\Users\\kasaxena\\netcoredbg\\netcoredbg.exe',
                args = {'--interpreter=vscode'}
            }

            dap.configurations.cs = {
                {
                    type = 'coreclr',
                    name = 'launch - netcoredbg',
                    request = 'launch',
                    program = function()
                        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '\\bin\\Debug\\net8.0', 'file')
                    end
                }
            }

            vim.api.nvim_set_keymap('n', '<F5>', '<cmd>lua require"dap".continue()<CR>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<s-F5>', '<cmd>lua require"dap".terminate()<CR>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<F9>', '<cmd>lua require"dap".toggle_breakpoint()<CR>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<F10>', '<cmd>lua require"dap".step_over()<CR>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<F11>', '<cmd>lua require"dap".step_into()<CR>', { noremap = true, silent = true }) 
            vim.api.nvim_set_keymap('n', '<F12>', '<cmd>lua require"dap".step_out()<CR>', { noremap = true, silent = true })
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
        config = function()
            require("dapui").setup()
            local dap, dapui = require("dap"), require("dapui")
            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end
    }
}
