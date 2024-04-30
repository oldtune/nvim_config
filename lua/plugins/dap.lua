--get os
local cpp_vscode_windows_path = "C:\\bin\\cpptools\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe"
local cpp_vscode_linux_path = "/usr/bin/cpptools-linux/extension/debugAdapters/bin/OpenDebugAD7"
local dap = require('dap')

local function windows_dap_setup()
    dap.adapters.cppdbg = {
        id = 'cppdbg',
        type = 'executable',
        command = cpp_vscode_windows_path,
        options = {
            detached = false
        }
    }
end

local function linux_dap_setup()
    dap.adapters.cppdbg = {
        id = 'cppdbg',
        type = 'executable',
        command = cpp_vscode_linux_path,
    }
end

local os = vim.loop.os_uname()
_G.OS = os.sysname
if string.find(OS, 'Windows')
then
    windows_dap_setup()
else
    linux_dap_setup()
end

dap.configurations.rust = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopAtEntry = true,
        setupCommands = {
            {
                text = '-enable-pretty-printing',
                description = 'enable pretty printing',
                ignoreFailures = false
            },
        },

    },
    {
        name = 'Attach to gdbserver :1234',
        type = 'cppdbg',
        request = 'launch',
        MIMode = 'gdb',
        miDebuggerServerAddress = 'localhost:1234',
        miDebuggerPath = '/usr/bin/gdb',
        cwd = '${workspaceFolder}',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        setupCommands = {
            {
                text = '-enable-pretty-printing',
                description = 'enable pretty printing',
                ignoreFailures = false
            },
        },
    },
}
