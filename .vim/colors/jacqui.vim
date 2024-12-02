" jacqui's colors
" tested on xterm backgrounds "midnightblue" and "lemonchiffon" :^)

hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "jacqui"

hi Comment		cterm=NONE		ctermfg=NONE
hi Constant		cterm=NONE		ctermfg=NONE
hi String		cterm=none		ctermfg=133
hi Number		cterm=NONE		ctermfg=166
hi Special		cterm=bold		ctermfg=NONE
hi Identifier		cterm=NONE		ctermfg=NONE
hi PreProc		cterm=NONE		ctermfg=NONE
hi Statement		cterm=NONE		ctermfg=36
hi Title		cterm=bold		ctermfg=NONE
hi Type			cterm=NONE		ctermfg=31
hi Underlined		cterm=underline		ctermfg=NONE
hi htmlItalic		cterm=italic		ctermfg=NONE
hi htmlBold		cterm=bold		ctermfg=NONE
hi htmlBoldUnderline	cterm=bold,underline	ctermfg=NONE
hi htmlBoldUnderlineItalic  cterm=bold,underline,italic	    ctermfg=NONE
hi VertSplit		cterm=reverse		ctermfg=NONE
hi Visual		cterm=reverse		ctermfg=130	ctermbg=NONE
