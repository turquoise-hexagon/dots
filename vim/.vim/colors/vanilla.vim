hi clear
set background=dark

if exists("syntax on")
    syntax reset
endif

let g:colors_name = "vanilla"

hi Normal       ctermfg=7       ctermbg=NONE
hi Comment      ctermfg=8       ctermbg=NONE
hi Constant     ctermfg=2       ctermbg=NONE
hi Identifier   ctermfg=11      ctermbg=NONE
hi Statement    ctermfg=6       ctermbg=NONE
hi PreProc      ctermfg=12      ctermbg=NONE
hi Type         ctermfg=13      ctermbg=NONE
hi Special      ctermfg=11      ctermbg=NONE
hi Ignore       ctermfg=8       ctermbg=NONE
hi Error        ctermfg=7       ctermbg=9
hi Todo         ctermfg=7       ctermbg=2
hi Underlined   ctermfg=NONE    ctermbg=NONE cterm=underline

hi DiffAdd      ctermfg=2       ctermbg=NONE
hi DiffChange   ctermfg=7       ctermbg=NONE
hi DiffText     ctermfg=7       ctermbg=NONE
hi DiffDelete   ctermfg=1       ctermbg=NONE
hi Search       ctermfg=0       ctermbg=7
hi IncSearch    ctermfg=7       ctermbg=2
hi NonText      ctermfg=0       ctermbg=NONE
hi StatusLine   ctermfg=7       ctermbg=NONE
hi StatusLineNC ctermfg=7       ctermbg=NONE
hi MatchParen   ctermfg=0       ctermbg=7
hi VertSplit    ctermfg=7       ctermbg=NONE
hi Visual       ctermfg=0       ctermbg=7
