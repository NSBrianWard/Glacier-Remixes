" -----------------------------------------------------------------------------
" File: glacier.vim
" Description: A flat, colorful theme/scheme combo for VIM
" Credits: Brian Ward <twitter: @brianward>, Joey Figaro <twitter: @joeyfigaro>
" Source: https://github.com/primedirective/glacier-remixes
" Last Modified: 26 Jun 2014
" -----------------------------------------------------------------------------

" ***THIS IS A WORK IN PROGRESS***

" Initialization {{

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name = "glacier"

" }}

" Palette {{

let s:glacier = {}

let s:glacier.xterm0  = ['#3c444d', 0]  " (60,68,77)     ANSI BLACK
let s:glacier.xterm1  = ['#cb253d', 1]  " (203,37,61)    ANSI RED
let s:glacier.xterm2  = ['#3fb383', 2]  " (63,179,131)   ANSI GREEN
let s:glacier.xterm3  = ['#fda543', 3]  " (253,165,67)   ANSI YELLOW
let s:glacier.xterm4  = ['#266b85', 4]  " (38,107,133)   ANSI BLUE
let s:glacier.xterm5  = ['#cb3a2e', 5]  " (203,58,46)    ANSI MAGENTA
let s:glacier.xterm6  = ['#8996a8', 6]  " (137,150,168)  ANSI CYAN
let s:glacier.xterm7  = ['#ffffff', 7]  " (255,255,255)  ANSI WHITE

let s:glacier.xterm8  = ['#515c68', 8]  " (81,92,104)    ANSI BLACK BOLD
let s:glacier.xterm9  = ['#cb253d', 9]  " (203,37,61)    ANSI RED BOLD
let s:glacier.xterm10 = ['#52eaa9', 10] " (82,234,169)   ANSI GREEN BOLD
let s:glacier.xterm11 = ['#fee380', 11] " (254,227,128)  ANSI YELLOW BOLD
let s:glacier.xterm12 = ['#329dcd', 12] " (50,157,205)   ANSI BLUE BOLD
let s:glacier.xterm13 = ['#f05e33', 13] " (240,94,51)    ANSI MAGENTA BOLD
let s:glacier.xterm14 = ['#afc4db', 14] " (175,196,219)  ANSI CYAN BOLD
let s:glacier.xterm15 = ['#ffffff', 15] " (255,255,255)  ANSI WHITE BOLD

let s:glacier.guibg  = '#0e151b'        " (14, 21, 27)   BACKGROUND COLOR

" }}

" Set Color Mode {{

function! s:UIMode()
    if has("gui_running")
        let s:ColorMode  = "gui"
        let s:ArrayBit   = 0
    else
        let s:ColorMode  = "cterm"
        let s:ArrayBit   = 1

        " Force 16 color mode
        set t_Co=16 
    endif
endfunction

call s:UIMode()

" }}

" Semantics {{ 

" Set window background color
if has("gui_running")
    execute "hi Normal "   . s:ColorMode . "fg=" . s:glacier.xterm15[s:ArrayBit] . " " . s:ColorMode . "bg=" . s:glacier.guibg . " " . s:ColorMode . "=none"
else
    execute "hi Normal "   . s:ColorMode . "fg=" . s:glacier.xterm15[s:ArrayBit] . " " . s:ColorMode . "=none"
endif

" Set syntax colors
execute "hi Comment "      . s:ColorMode . "fg=" . s:glacier.xterm0[s:ArrayBit]  . " " . s:ColorMode . "=none"
execute "hi Constant "     . s:ColorMode . "fg=" . s:glacier.xterm10[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi Identifier "   . s:ColorMode . "fg=" . s:glacier.xterm13[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi Statement "    . s:ColorMode . "fg=" . s:glacier.xterm13[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi PreProc "      . s:ColorMode . "fg=" . s:glacier.xterm13[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi Function "     . s:ColorMode . "fg=" . s:glacier.xterm12[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi Type "         . s:ColorMode . "fg=" . s:glacier.xterm13[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi Number "       . s:ColorMode . "fg=" . s:glacier.xterm10[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi Special "      . s:ColorMode . "fg=" . s:glacier.xterm10[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi String "       . s:ColorMode . "fg=" . s:glacier.xterm11[s:ArrayBit] . " " . s:ColorMode . "=none"

" Set VIM UI colors
execute "hi LineNr "       . s:ColorMode . "fg=" . s:glacier.xterm0[s:ArrayBit]  . " " . s:ColorMode . "=none"
execute "hi NonText "      . s:ColorMode . "fg=" . s:glacier.xterm0[s:ArrayBit]  . " " . s:ColorMode . "=none"
execute "hi Cursor "       . s:ColorMode . "fg=" . s:glacier.xterm11[s:ArrayBit] . " " . s:ColorMode . "bg=" . s:glacier.xterm5[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi MatchParen "   . s:ColorMode . "fg=" . s:glacier.xterm11[s:ArrayBit] . " " . s:ColorMode . "bg=" . s:glacier.xterm5[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi SpecialKey "   . s:ColorMode . "fg=" . s:glacier.xterm15[s:ArrayBit] . " " . s:ColorMode . "bg=" . s:glacier.xterm4[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi Folded "       . s:ColorMode . "fg=" . s:glacier.xterm15[s:ArrayBit] . " " . s:ColorMode . "bg=" . s:glacier.xterm4[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi StatusLine "   . s:ColorMode . "fg=" . s:glacier.xterm15[s:ArrayBit] . " " . s:ColorMode . "bg=" . s:glacier.xterm4[s:ArrayBit] . " " . s:ColorMode . "=none"
execute "hi StatusLineNC " . s:ColorMode . "fg=" . s:glacier.xterm15[s:ArrayBit] . " " . s:ColorMode . "bg=" . s:glacier.xterm4[s:ArrayBit] . " " . s:ColorMode . "=none"

" }}

set background=dark