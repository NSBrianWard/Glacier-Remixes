#!/bin/sh
# Glacier - Console color setup script
#  Wimer Hazenberg (http://www.monokai.nl)

color00="0E/15/1B" # Black
color01="D7/50/3C" # Red
color02="52/EA/A9" # Green
color03="FF/B4/54" # Yellow
color04="26/6B/85" # Blue
color05="CB/25/3D" # Magenta
color06="89/96/A8" # Cyan
color07="FE/FE/FE" # White

color08="23/32/3F" # Bright Black
color09="F0/5E/33" # Bright Red
color10="76/FF/CD" # Bright Green
color11="FF/E7/92" # Bright Yellow
color12="3C/AD/D7" # Bright Blue
color13="D7/3C/4D" # Bright Magenta
color14="AF/C4/DB" # Bright Cyan
color15="FF/FF/FF" # Bright White

color16="F5/75/42" # Orange
color17="9F/3A/2C" # Brown
color18="3C/44/4D" # Dark Grey
color19="51/5C/68" # Grey
color20="B0/B3/BA" # Bright Grey
color21="FF/FF/FF" # White

#0E151B - Black
#D7503C - Red
#52EAA9 - Green
#FFB454 - Yellow
#266B85 - Blue
#CB253D - Magenta
#8996A8 - Cyan
#FEFEFE - White

#23323F - Bright Black
#F05E33 - Bright Red
#76FFCD - Bright Green
#FFE792 - Bright yellow
#3CADD7 - Bright Blue
#D73C4D - Bright Magenta
#AFC4DB - Bright Cyan
#FFFFFF - Bright White

#F57542 - orange
#9F3A2C - brown
#1B2735 - Darker
#B0B3BA - Grey
#FFFFFF - Bright White

#4ABE95 - green
#43AE88 - green 2
#5EEBB8 - bright green 2
#BD4230 - dark red


#DDB700 - mustard
#F7F09D - yellow 2
#F3FFB5 - yellow 3 (greener)

#0C1217 - black
#0D1319 - black 2
#0E151B - black 3
#23323F - black 5
#233345 - black 6
#263445 - black 7

#3C444D - grey
#3E4751 - grey 2
#515C68 - grey 3
#B0B3BA - bright grey
#EFEFEF - brigher grey
#F8F8F8 - white

# 16 color space
printf "\e]4;0;rgb:$color00\e\\"
printf "\e]4;1;rgb:$color01\e\\"
printf "\e]4;2;rgb:$color02\e\\"
printf "\e]4;3;rgb:$color03\e\\"
printf "\e]4;4;rgb:$color04\e\\"
printf "\e]4;5;rgb:$color05\e\\"
printf "\e]4;6;rgb:$color06\e\\"
printf "\e]4;7;rgb:$color07\e\\"
printf "\e]4;8;rgb:$color08\e\\"
printf "\e]4;9;rgb:$color09\e\\"
printf "\e]4;10;rgb:$color10\e\\"
printf "\e]4;11;rgb:$color11\e\\"
printf "\e]4;12;rgb:$color12\e\\"
printf "\e]4;13;rgb:$color13\e\\"
printf "\e]4;14;rgb:$color14\e\\"
printf "\e]4;15;rgb:$color15\e\\"


# 256 color space
if [ "$TERM" != linux ]; then
  printf "\e]4;16;rgb:$color16\e\\"
  printf "\e]4;17;rgb:$color17\e\\"
  printf "\e]4;18;rgb:$color18\e\\"
  printf "\e]4;19;rgb:$color19\e\\"
  printf "\e]4;20;rgb:$color20\e\\"
  printf "\e]4;21;rgb:$color21\e\\"
fi

# clean up
unset color00
unset color01
unset color02
unset color03
unset color04
unset color05
unset color06
unset color07
unset color08
unset color09
unset color10
unset color11
unset color12
unset color13
unset color14
unset color15
unset color16
unset color17
unset color18
unset color19
unset color20
unset color21