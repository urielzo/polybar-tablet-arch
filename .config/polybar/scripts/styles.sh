#!/usr/bin/env bash

## Dirs
polybar_path="$HOME/.config/polybar/"
rofi_path="$HOME/.config/rofi/"

## Light Mode #############################################
if  [[ $1 = "--Light" ]]; then

# wallpaper ---------------------------------
nitrogen --save --set-zoom-fill $polybar_path/wallpapers/bg_1.jpg

# polybar ---------------------------------
sed -i -e 's/background = .*/background = #00000000/g' $polybar_path/colors
sed -i -e 's/background-alt = .*/background-alt = #80ffffff/g' $polybar_path/colors

sed -i -e 's/foreground = .*/foreground = #ffffffFF/g' $polybar_path/colors
sed -i -e 's/foreground-alt = .*/foreground-alt = #2c3132/g' $polybar_path/colors

sed -i -e 's/primary = .*/primary = #a7a9a8/g' $polybar_path/colors
sed -i -e 's/secondary = .*/secondary = #ffffffFF/g' $polybar_path/colors

sed -i -e 's/urgent = .*/urgent = #121417/g' $polybar_path/colors
sed -i -e 's/bg = .*/bg = #5c6767/g' $polybar_path/colors
sed -i -e 's/fg = .*/fg = #2c3132/g' $polybar_path/colors

# relaunch polybar
polybar-msg cmd restart

# rofi ---------------------------------
sed -i -e 's/background: .*/background:    #5c6767ff;/g' $rofi_path/colors.rasi
sed -i -e 's/foreground: .*/foreground:    #ffffffFF;/g' $rofi_path/colors.rasi
sed -i -e 's/background-alt: .*/background-alt:    #2c3132ff;/g' $rofi_path/colors.rasi
sed -i -e 's/text-color: .*/text-color:    #ffffffff;/g' $rofi_path/colors.rasi
sed -i -e 's/primary: .*/primary:    #a7a9a8ff;/g' $rofi_path/colors.rasi
sed -i -e 's/urgent: .*/urgent:    #825058ff;/g' $rofi_path/colors.rasi

## Dark Mode #############################################
elif  [[ $1 = "--Dark" ]]; then

# wallpaper ---------------------------------
nitrogen --save --set-zoom-fill $polybar_path/wallpapers/girl.jpg

# polybar ---------------------------------
sed -i -e 's/background = .*/background = #00000000/g' $polybar_path/colors
sed -i -e 's/background-alt = .*/background-alt = #12171b/g' $polybar_path/colors

sed -i -e 's/foreground = .*/foreground = #ffffff/g' $polybar_path/colors
sed -i -e 's/foreground-alt = .*/foreground-alt = #924D37/g' $polybar_path/colors

sed -i -e 's/primary = .*/primary = #625853/g' $polybar_path/colors
sed -i -e 's/secondary = .*/secondary = #b9b3b1/g' $polybar_path/colors

sed -i -e 's/urgent = .*/urgent = #877871/g' $polybar_path/colors
sed -i -e 's/bg = .*/bg = #121212/g' $polybar_path/colors
sed -i -e 's/fg = .*/fg = #dad6d2/g' $polybar_path/colors

# relaunch polybar
polybar-msg cmd restart

# rofi ---------------------------------
sed -i -e 's/background: .*/background:    #12171bff;/g' $rofi_path/colors.rasi
sed -i -e 's/foreground: .*/foreground:    #b8a5a8ff;/g' $rofi_path/colors.rasi
sed -i -e 's/background-alt: .*/background-alt:    #0b0d0dff;/g' $rofi_path/colors.rasi
sed -i -e 's/text-color: .*/text-color:    #b8a5a8ff;/g' $rofi_path/colors.rasi
sed -i -e 's/primary: .*/primary:    #704955ff;/g' $rofi_path/colors.rasi
sed -i -e 's/urgent: .*/urgent:    #825058ff;/g' $rofi_path/colors.rasi

## Help Menu #############################################
else
echo "
Style Switcher
Developed By - Aditya Shakya (@adi1090x) 
Available options:
--Dark	--Light --Blue
"
fi
