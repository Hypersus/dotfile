"
" Custom options set
set number
set relativenumber
set laststatus=2
set statusline+=%F
set tabstop=4
set autoindent
set backspace=indent,eol,start
set showcmd
syntax on

"
" Custom function
autocmd BufNewFile *.* exec ":call SetTitle()"
func SetComment_sh()
	call setline(3, " #===================================================================#")
	call setline(4, " #	Copyright (C) ".strftime("%Y")." Zeke. All rights reserved")
	call setline(5, " # ")
	call setline(6, " #	Filename:		".expand("%:t"))
	call setline(7, " #	Author:			Zeke")
	call setline(8,	" #	Date:			".strftime("%Y.%m.%d"))
	call setline(9, " #	E-mail:			hypersus@outlook.com")
	call setline(10," #	Discription:	test script")
	call setline(11," #	")
	call setline(12," #===================================================================#")
	call setline(13,"")
	call setline(14,"")
endfunc

func SetComment_go()
	call setline(3, "//===================================================================#")
	call setline(4, "//	Copyright (C) ".strftime("%Y")." Zeke. All rights reserved")
	call setline(5, "// ")
	call setline(6, "//	Filename:		".expand("%:t"))
	call setline(7, "//	Author:			Zeke")
	call setline(8,	"//	Date:			".strftime("%Y.%m.%d"))
	call setline(9, "//	E-mail:			hypersus@outlook.com")
	call setline(10,"//	Discription:	test script")
	call setline(11,"//	")
	call setline(12,"//===================================================================#")
	call setline(13,"")
	call setline(14,"")
endfunc
func SetTitle()
	if &filetype == 'sh'
		call setline(1,"#!/bin/bash")
		call setline(2,"")	
		call SetComment_sh()
	elseif &filetype == 'go'
		call setline(1,"")
		call setline(2,"")
		call SetComment_go()
	endif
endfunc
autocmd BufNewFile * normal G
"
"Custom key mapping
imap <C-Down> <Esc>yypi
imap <C-D> <Esc>ddi
inoremap <C-CR> <Esc>o
inoremap {<CR> {<CR>}<Esc>O<Tab>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
nnoremap <C-PageDown> <Esc>gt
nnoremap <C-PageUp> <Esc>gT
