hi clear
set background=dark

if exists("syntax on")
    syntax reset
endif

let g:colors_name = "vanilla"

hi Normal       term=NONE       cterm=NONE      ctermfg=7       ctermbg=NONE
hi Comment      term=NONE       cterm=NONE      ctermfg=8       ctermbg=NONE
hi Constant     term=NONE       cterm=NONE      ctermfg=2       ctermbg=NONE
hi Identifier   term=NONE       cterm=NONE      ctermfg=11      ctermbg=NONE
hi Statement    term=NONE       cterm=NONE      ctermfg=6       ctermbg=NONE
hi PreProc      term=NONE       cterm=NONE      ctermfg=12      ctermbg=NONE
hi Type         term=NONE       cterm=NONE      ctermfg=13      ctermbg=NONE
hi Special      term=NONE       cterm=NONE      ctermfg=11      ctermbg=NONE
hi Ignore       term=NONE       cterm=NONE      ctermfg=8       ctermbg=NONE
hi Error        term=NONE       cterm=NONE      ctermfg=7       ctermbg=9
hi Todo         term=NONE       cterm=NONE      ctermfg=7       ctermbg=2
hi Underlined   term=underline  cterm=underline ctermfg=NONE    ctermbg=NONE

hi DiffAdd      term=NONE       cterm=NONE      ctermfg=2       ctermbg=NONE
hi DiffChange   term=NONE       cterm=NONE      ctermfg=7       ctermbg=NONE
hi DiffText     term=NONE       cterm=NONE      ctermfg=7       ctermbg=NONE
hi DiffDelete   term=NONE       cterm=NONE      ctermfg=1       ctermbg=NONE
hi Search       term=NONE       cterm=NONE      ctermfg=0       ctermbg=7
hi IncSearch    term=NONE       cterm=NONE      ctermfg=7       ctermbg=2
hi NonText      term=NONE       cterm=NONE      ctermfg=0       ctermbg=NONE
hi StatusLine   term=NONE       cterm=NONE      ctermfg=7       ctermbg=NONE
hi StatusLineNL term=NONE       cterm=NONE      ctermfg=7       ctermbg=NONE
hi MatchParen   term=NONE       cterm=NONE      ctermfg=0       ctermbg=7
hi VertSplit    term=NONE       cterm=NONE      ctermfg=7       ctermbg=NONE
hi Visual       term=NONE       cterm=NONE      ctermfg=0       ctermbg=7
