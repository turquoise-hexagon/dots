local map = vim.api.nvim_set_keymap

local options = {
    noremap = true,
    silent  = true
}

map("t", "<esc>", "<c-\\><c-n>",     options)
map("n", "<esc>", ":nohlsearch<cr>", options)
