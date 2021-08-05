local cmd = vim.cmd

local function autocmds(commands)
    for _, command in pairs(commands) do
        cmd("autocmd " .. table.concat(command, " "))
    end
end

autocmds({
    {"BufNewFile,BufRead", "*Pkgfile", "set", "ft=sh"},
    {"TermOpen",           "*",        "set", "nonu" }
})
