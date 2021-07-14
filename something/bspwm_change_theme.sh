#!/bin/bash
if [ $# -lt 1 ]; then
	echo "No theme name given (light, dark)"
	exit
fi

if [ $1 != "light" && $1 != "dark" ]; then
	exit
else
	export theme=$1
	pkill polybar
	~/.scripts/st_change_theme.sh $1
	~/.config/wm/bspwmrc
fi
