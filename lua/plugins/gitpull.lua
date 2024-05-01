local window_location = "~/AppData/Local/nvim"
local linux_location = "~/.config/nvim"

local M = {}

local os_name = vim.loop.os_uname()
_G.OS = os_name.sysname

function M.pull()
    print("Pulling updates from git")
    if string.find(OS, 'Windows')
    then
        os.execute('git -C ' .. window_location .. ' pull')
    else
        os.execute('git -C ' .. linux_location .. ' pull')
    end
    print("Updated to latest version")
end

return M
