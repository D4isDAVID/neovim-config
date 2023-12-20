-- This is for Windows only.
-- See https://github.com/andweeb/presence.nvim/pull/87.
if not vim.loop.os_uname().sysname:find("Windows") then return end

local presenceRoot = vim.fn.stdpath('data')
    .. '\\site\\pack\\packer\\start\\presence.nvim'

local diffPath = vim.fn.stdpath('config') .. '\\windows-presence.nvim.patch'

local err = ''
vim.fn.jobstart(
    'git apply ' .. diffPath,
    {
        cwd = presenceRoot,
        on_stderr = function (_, errChunks)
            local chunks = #errChunks
            for i = 1, chunks do
                err = err .. errChunks[i]
                if i < chunks then
                    err = err .. '\n'
                end
            end
        end,
        on_exit = function (_, exitCode)
            if exitCode == 0 or exitCode == 1 then return end
            vim.notify('Windows presence.nvim patch failed:\n' .. err)
        end,
    }
)

