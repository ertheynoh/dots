" jacqui's colors
" doesn't specify a background color. i use it with ~lavender~ xterm background;
" ~light slate gray~ also works: ":hi Normal ctermfg=black ctermbg=189"

hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "jacqui"

hi Comment		cterm=NONE		ctermfg=NONE
hi Constant		cterm=bold		ctermfg=96
hi String		cterm=none		ctermfg=98
hi Special		cterm=bold		ctermfg=NONE
hi Identifier		cterm=NONE		ctermfg=20
hi Function		cterm=none		ctermfg=23
hi PreProc		cterm=none		ctermfg=239
hi Statement		cterm=NONE		ctermfg=26
hi Title		cterm=bold		ctermfg=NONE
hi Type			cterm=NONE		ctermfg=28
hi Underlined		cterm=underline		ctermfg=NONE
hi htmlItalic		cterm=italic		ctermfg=NONE
hi htmlBold		cterm=bold		ctermfg=NONE
hi htmlBoldUnderline	cterm=bold,underline	ctermfg=NONE
hi htmlBoldUnderlineItalic  cterm=bold,underline,italic	    ctermfg=NONE
hi VertSplit		cterm=reverse		ctermfg=NONE
hi Visual		cterm=reverse		ctermfg=183	ctermbg=0
hi Error		cterm=none		ctermfg=0
