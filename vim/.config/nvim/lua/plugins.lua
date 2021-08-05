local cmd = vim.cmd

local function paq_install()
    os.execute(os.getenv("HOME") ..
        "/.config/nvim/paq_install.sh")
end

local function paq_init()
    require("paq") {
        "mbbill/undotree",
        "tpope/vim-commentary",
        "tpope/vim-surround",
        "turquoise-hexagon/fruity"
    }

    -- enable colorscheme
    cmd("colorscheme fruity")
end

if not pcall(paq_init) then
    paq_install()
end
