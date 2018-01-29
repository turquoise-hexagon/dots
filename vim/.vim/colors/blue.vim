hi clear
set background=dark

if exists("syntax on")
    syntax reset
endif

let g:colors_name = "blue"

hi Normal ctermfg=7

" general syntax colors
hi Comment          ctermfg=8
hi Constant         ctermfg=2
hi Identifier       ctermfg=11      cterm=NONE
hi Statement        ctermfg=6
hi PreProc          ctermfg=12
hi Type             ctermfg=13
hi Special          ctermfg=11
hi Underlined       ctermfg=11
hi Ignore           ctermfg=8
hi Error            ctermfg=7       ctermbg=9
hi Todo             ctermfg=7       ctermbg=2

" vim colors
hi NonText          ctermfg=0
hi ModeMsg          ctermfg=7
hi MatchParen       ctermfg=0       ctermbg=7
hi Visual           ctermfg=0       ctermbg=7
