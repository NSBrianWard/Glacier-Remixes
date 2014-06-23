" Glacier Color Scheme for VIM

hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "glacier"

if has("gui_running")
    " set gui colors
    hi Comment          guifg=#404955   gui=none
    hi Constant         guifg=#cb3b2e   gui=none
    hi Cursor           guibg=#d7513c   guifg=#fda343   gui=none
    hi CursorLine       guifg=#fda343   guibg=#d7513c   gui=none
    hi ColorColumn      guifg=#000000   guibg=#404955   gui=none
    hi Directory        guifg=#cc253e   gui=none
    hi Folded           guibg=#d7513c   guifg=#fda643   gui=none
    hi Function         guifg=#cc253e   gui=none
    hi Identifier       guifg=#fda643   gui=none
    hi LineNr           guifg=#fda643   gui=none
    hi MatchParen       guifg=#fda643   guibg=#d7513c   gui=none
    hi NonText          guifg=#329ccd   gui=none
    hi Normal           guifg=#ffffff   guibg=#0e151b   gui=none
    hi Number           guifg=#f05f33   gui=none
    hi PreProc          guifg=#3fb383   gui=none
    hi Statement        guifg=#329ccd   gui=bold
    hi Special          guifg=#f05c33   gui=none
    hi SpecialKey       guibg=#266b85   guifg=#ffffff   gui=none
    hi StatusLine       guibg=#d7513c   guifg=#fee380   gui=none
    hi StatusLineNC     guibg=#d7513c   guifg=#fee380   gui=none
    hi String           guifg=#fee380   gui=none
    hi StorageClass     guifg=#cb3b2e   gui=bold
    hi Type             guifg=#fda643   gui=bold
    hi Todo             guifg=#ffffff   gui=none
    hi Title            guifg=#ffffff   gui=none
    hi Underlined       guifg=#ffffff   gui=none
    hi VertSplit        guibg=#339ccd   guifg=#0e141b   gui=none
    hi Visual           guibg=#d7513c   guifg=#fda643   gui=none
else
    " cterm needs to be in 16 color mode
    set t_Co=16

    " map to the system colors
    let s:dark_gray   = 0
    let s:dark_red    = 1
    let s:dark_green  = 2
    let s:dark_yellow = 3
    let s:dark_blue   = 4
    let s:dark_orange = 5
    let s:dark_pblue  = 6
    let s:dark_white  = 7

    let s:lite_gray   = 8
    let s:lite_red    = 9
    let s:lite_green  = 10
    let s:lite_yellow = 11
    let s:lite_blue   = 12
    let s:lite_orange = 13
    let s:lite_pblue  = 14
    let s:lite_white  = 15

    execute "hi Comment         ctermfg=".s:dark_gray."     cterm=none"
    execute "hi Constant        ctermfg=".s:dark_orange."   cterm=none"
    execute "hi Cursor          ctermbg=".s:lite_orange."   ctermfg=".s:dark_yellow."   cterm=none"
    execute "hi CursorLine      ctermfg=".s:dark_yellow."   ctermbg=".s:dark_orange."   cterm=none"
    execute "hi ColorColumn     ctermfg=".s:dark_gray."     ctermbg=".s:dark_gray."     cterm=none"
    execute "hi Directory       ctermfg=".s:lite_red."      cterm=none"
    execute "hi Folded          ctermbg=".s:dark_orange."   ctermfg=".s:dark_yellow."   cterm=none"
    execute "hi Function        ctermfg=".s:lite_red."      cterm=none"
    execute "hi Identifier      ctermfg=".s:dark_yellow."   cterm=none"
    execute "hi LineNr          ctermfg=".s:dark_yellow."   cterm=none"
    execute "hi MatchParen      ctermfg=".s:dark_yellow."   ctermbg=".s:dark_orange."   cterm=none"
    execute "hi NonText         ctermfg=".s:lite_blue."     cterm=none"
    execute "hi Normal          ctermfg=".s:lite_white."    cterm=none"
    execute "hi PreProc         ctermfg=".s:dark_green."    cterm=none"
    execute "hi Statement       ctermfg=".s:lite_blue."     cterm=bold"
    execute "hi Special         ctermfg=".s:lite_orange."   cterm=none"
    execute "hi SpecialKey      ctermbg=".s:dark_blue."     ctermfg=".s:lite_white."     cterm=none"
    execute "hi StatusLine      ctermbg=".s:dark_orange."   ctermfg=".s:lite_yellow."   cterm=none"
    execute "hi StatusLineNC    ctermbg=".s:dark_orange."   ctermfg=".s:lite_yellow."   cterm=none"
    execute "hi String          ctermfg=".s:lite_yellow."   cterm=none"
    execute "hi StorageClass    ctermfg=".s:dark_orange."   cterm=bold"
    execute "hi Type            ctermfg=".s:dark_yellow."   cterm=bold"
    execute "hi Todo            ctermfg=".s:lite_white."    cterm=none"
    execute "hi Title           ctermfg=".s:lite_white."    cterm=none"
    execute "hi Underlined      ctermfg=".s:lite_white."    cterm=none"
    execute "hi VertSplit       ctermbg=".s:lite_blue."     cterm=none"
    execute "hi Visual          ctermbg=".s:dark_orange."   ctermfg=".s:dark_yellow."   cterm=none"
endif

set background=dark
