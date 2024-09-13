local dap = require("dap")
 require("mason-nvim-dap").setup({
         ensure_installed = {'codelldb'}
})

 -- setup cpptools adapter
dap.adapters.codelldb= {
    type = 'executable';
    name = "codelldb",
--    command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7',
    args = {},
    attach = {
    pidProperty = "processId",
    pidSelect = "ask"
    },
}

-- this configuration should start cpptools and the debug the executable main in the current directory when executing :DapContinue
       dap.configurations.cpp = {
         {
           name = "Launch",
           type = "codelldb",
           request = "launch",
           program = '${workspaceFolder}/main',
           cwd = '${workspaceFolder}',
           stopOnEntry = true,
           args = {},
           runInTerminal = false,
         },
       }
--vim.keymap.set('n', '<Leader>bb', dap.toggle_breakpoint(), {} )
