local opt = vim.opt

-- behavior
opt.hidden =      true
opt.swapfile =    false

opt.ignorecase =  true
opt.smartcase =   true
opt.infercase =   true

opt.hlsearch =    true
opt.incsearch =   true

opt.backspace =   "indent,eol,start"

opt.clipboard =   "unnamed,unnamedplus"

opt.smarttab =    true
opt.expandtab =   true
opt.tabstop =     4
opt.shiftwidth =  4

opt.wrap =        true
opt.expandtab =   true
opt.autoindent =  true
opt.breakindent = true

-- interface
opt.ruler =       false
opt.number =      true
opt.laststatus =  1
opt.mouse =       "a"
opt.guicursor =   ""
opt.shortmess =   "actI"
opt.fillchars =   "vert:|"
