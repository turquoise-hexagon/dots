hi clear
set background=dark

if exists("syntax on")
    syntax reset
endif

let g:colors_name = "vanilla"

hi Normal       ctermfg=7       ctermbg=NONE    cterm=NONE
hi Comment      ctermfg=8       ctermbg=NONE    cterm=NONE
hi Constant     ctermfg=2       ctermbg=NONE    cterm=NONE
hi Identifier   ctermfg=11      ctermbg=NONE    cterm=NONE
hi Statement    ctermfg=6       ctermbg=NONE    cterm=NONE
hi PreProc      ctermfg=12      ctermbg=NONE    cterm=NONE
hi Type         ctermfg=13      ctermbg=NONE    cterm=NONE
hi Special      ctermfg=11      ctermbg=NONE    cterm=NONE
hi Ignore       ctermfg=8       ctermbg=NONE    cterm=NONE
hi Error        ctermfg=0       ctermbg=1       cterm=NONE
hi Todo         ctermfg=0       ctermbg=2       cterm=NONE
hi Underlined   ctermfg=NONE    ctermbg=NONE    cterm=underline

hi Folded       ctermfg=8       ctermbg=NONE    cterm=NONE
hi DiffAdd      ctermfg=2       ctermbg=NONE    cterm=NONE
hi DiffChange   ctermfg=11      ctermbg=NONE    cterm=NONE
hi DiffText     ctermfg=7       ctermbg=NONE    cterm=NONE
hi DiffDelete   ctermfg=1       ctermbg=NONE    cterm=NONE
hi Search       ctermfg=0       ctermbg=2       cterm=NONE
hi IncSearch    ctermfg=0       ctermbg=11      cterm=NONE
hi NonText      ctermfg=0       ctermbg=NONE    cterm=NONE
hi StatusLine   ctermfg=7       ctermbg=NONE    cterm=NONE
hi StatusLineNC ctermfg=7       ctermbg=NONE    cterm=NONE
hi MatchParen   ctermfg=0       ctermbg=6       cterm=NONE
hi VertSplit    ctermfg=7       ctermbg=NONE    cterm=NONE
hi Visual       ctermfg=0       ctermbg=7       cterm=NONE
hi ErrorMsg     ctermfg=1       ctermbg=NONE    cterm=NONE
