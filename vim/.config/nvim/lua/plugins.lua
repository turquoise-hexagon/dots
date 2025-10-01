local function packer_install()
    os.execute(os.getenv("HOME") ..
        "/.config/nvim/packer_install.sh")
end

local function packer_init()
    require("packer").startup(
        function()
            use "tpope/vim-commentary"
            use "turquoise-hexagon/fruity"
            use "vale1410/vim-minizinc"
            use "wbthomason/packer.nvim"
            use {"eraserhd/parinfer-rust", run = "cargo build --release"}
            use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
        end
    )
end

if not pcall(packer_init) then
    packer_install()
end
