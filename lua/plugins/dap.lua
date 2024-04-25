--get os
local lldb_vscode_windows_path = ""
local lldb_vscode_linux_path = ""

local function windows_dap_setup()

end

local function linux_dap_setup()
end

local os = vim.loop.os_uname()
_G.OS = os
if string.find(OS, 'Windows')
then
    windows_dap_setup()
else
    linux_dap_setup()
end
--predefine path
--check for dap first
--if does not exist -> download -> extract
