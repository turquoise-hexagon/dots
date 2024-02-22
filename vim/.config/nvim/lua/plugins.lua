local cmd = vim.cmd

local function packer_install()
    os.execute(os.getenv("HOME") ..
        "/.config/nvim/packer_install.sh")
end

local function packer_init()
    require("packer").startup(
        function()
            use "wbthomason/packer.nvim"
            use "mbbill/undotree"
            use "tpope/vim-commentary"
            use "tpope/vim-surround"
            use "turquoise-hexagon/fruity"
            use "vale1410/vim-minizinc"
            use {
                "eraserhd/parinfer-rust", run = "cargo build --release"
            }
        end
    )

    -- enable colorscheme
    cmd("colorscheme fruity")
end

if not pcall(packer_init) then
    packer_install()
end
