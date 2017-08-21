#!/bin/bash
# script to parse Xresources colorschemes to minttyrc format
# Ckat 19/7/2017

function getCol {
    awk '/'"$1"'/{ sub(/#/,""); print $2 }' "$FILE"
}

if [[ -z "$1" ]]; then
    echo "please specify an Xresources file"
    exit 1
fi
FILE="$1"

printf "\n# generated from an xresources file\n# using xresources2minttyrc\n# ---------------------------------\n"
col=$(getCol "foreground")
printf "ForegroundColour=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "background")
printf "BackgroundColour=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "cursorColor")
printf "CursorColour=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color0")
printf "Black=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color8")
printf "BoldBlack=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color1")
printf "Red=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color9")
printf "BoldRed=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color2")
printf "Green=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color10")
printf "BoldGreen=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color3")
printf "Yellow=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color11")
printf "BoldYellow=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color4")
printf "Blue=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color12")
printf "BoldBlue=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color5")
printf "Magenta=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color13")
printf "BoldMagenta=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color6")
printf "Cyan=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color14")
printf "BoldCyan=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color7")
printf "White=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
col=$(getCol "color15")
printf "BoldWhite=%d,%d,%d\n" 0x${col:0:2} 0x${col:2:2} 0x${col:4:2}
