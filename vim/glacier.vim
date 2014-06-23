" Glacier Color Scheme for VIM
" Based on @joeyfigaro's theme for Sublime Text
" Scripted by @brianward, 2014

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "glacier"

" set colors for gui
let s:hex_black             = "#3c444d"
let s:hex_black_bold        = "#515c68"
let s:hex_red               = "#cb253d"
let s:hex_red_bold          = "#cb253d"
let s:hex_green             = "#3fb383"
let s:hex_green_bold        = "#52eaa9"
let s:hex_yellow            = "#fda543"
let s:hex_yellow_bold       = "#fee380"
let s:hex_blue              = "#266b85"
let s:hex_blue_bold         = "#329dcd"
let s:hex_magenta           = "#cb3a2e"
let s:hex_magenta_bold      = "#f05e33"
let s:hex_cyan              = "#8996a8"
let s:hex_cyan_bold         = "#afc4db"
let s:hex_white             = "#ffffff"
let s:hex_white_bold        = "#ffffff"

" map to system colors for 16 color terminal
let s:dark_gray             = 0
let s:dark_red              = 1
let s:dark_green            = 2
let s:dark_yellow           = 3
let s:dark_blue             = 4
let s:dark_orange           = 5
let s:dark_pblue            = 6
let s:dark_white            = 7
let s:lite_gray             = 8
let s:lite_red              = 9
let s:lite_green            = 10
let s:lite_yellow           = 11
let s:lite_blue             = 12
let s:lite_orange           = 13
let s:lite_pblue            = 14
let s:lite_white            = 15

if has("gui_running")
    " set gui colors
    execute "hi Comment         guifg=".s:hex_black."           gui=none"
    execute "hi Constant        guifg=".s:hex_magenta."         gui=none"
    execute "hi Cursor          guibg=".s:hex_magenta_bold."    guifg=".s:hex_yellow."          gui=none"
    execute "hi CursorLine      guifg=".s:hex_yellow."          guibg=".s:hex_magenta."         gui=none"
    execute "hi ColorColumn     guifg=".s:hex_black."           guibg=".s:hex_black."           gui=none"
    execute "hi Directory       guifg=".s:hex_red_bold."        gui=none"
    execute "hi Folded          guibg=".s:hex_magenta."         guifg=".s:hex_yellow."          gui=none"
    execute "hi Function        guifg=".s:hex_red."             gui=none"
    execute "hi Identifier      guifg=".s:hex_yellow."          gui=none"
    execute "hi LineNr          guifg=".s:hex_yellow."          gui=none"
    execute "hi MatchParen      guifg=".s:hex_yellow."          guibg=".s:hex_magenta."         gui=none"
    execute "hi NonText         guifg=".s:hex_blue_bold."       gui=none"
    execute "hi Normal          guifg=".s:hex_white_bold."      gui=none"
    execute "hi PreProc         guifg=".s:hex_green."           gui=none"
    execute "hi Statement       guifg=".s:hex_blue_bold."       gui=bold"
    execute "hi Special         guifg=".s:hex_magenta_bold."    gui=none"
    execute "hi SpecialKey      guibg=".s:hex_blue."            guifg=".s:hex_white_bold."      gui=none"
    execute "hi StatusLine      guibg=".s:hex_magenta."         guifg=".s:hex_yellow_bold."     gui=none"
    execute "hi StatusLineNC    guibg=".s:hex_magenta."         guifg=".s:hex_yellow_bold."     gui=none"
    execute "hi String          guifg=".s:hex_yellow_bold."     gui=none"
    execute "hi StorageClass    guifg=".s:hex_magenta."         gui=bold"
    execute "hi Type            guifg=".s:hex_yellow."          gui=bold"
    execute "hi Todo            guifg=".s:hex_white_bold."      gui=none"
    execute "hi Title           guifg=".s:hex_white_bold."      gui=none"
    execute "hi Underlined      guifg=".s:hex_white_bold."      gui=none"
    execute "hi VertSplit       guibg=".s:hex_blue_bold."       gui=none"
    execute "hi Visual          guibg=".s:hex_magenta."         guifg=".s:hex_yellow."          gui=none"
else
    " cterm needs to be in 16 color mode
    set t_Co=16

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
    execute "hi SpecialKey      ctermbg=".s:dark_blue."     ctermfg=".s:lite_white."    cterm=none"
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