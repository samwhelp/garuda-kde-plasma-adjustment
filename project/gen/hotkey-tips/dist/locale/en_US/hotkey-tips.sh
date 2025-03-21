#!/usr/bin/env bash

yad --width=1000 --height=600 \
--center \
--title="Garuda Kde Plasma Keybindings" \
--no-buttons \
--list \
--column=Keybind: \
--column=Action: \
--column=@fore@ \
--column=@font@ \
--timeout=15 \
--timeout-indicator=right \
"" "" "#6500c1" "Monospace 1" \
"" "Cheatsheet will be closed in 15 seconds!" "#ff0000" "Monospace 16" \
""  "ESC to close this cheatsheet" "#00ffff" "Monospace 16" \
"Alt + Shift + x" "Logout" "#ffffff" "Monospace 16" \
"Alt + Shift + z" "Leave" "#cccccc" "Monospace 16" \
"Alt + F1" "Main Menu" "#ffffff" "Monospace 16" \
"Alt + F2" "Runner" "#cccccc" "Monospace 16" \
"Alt + Shift + d" "Rofi Show Drun" "#ffffff" "Monospace 16" \
"Alt + Shift + r" "Rofi Show Run" "#cccccc" "Monospace 16" \
"Alt + Shift + w" "Rofi Show Window" "#ffffff" "Monospace 16" \
"Alt + Shift + f" "Launch File Manager (dolphin)" "#cccccc" "Monospace 16" \
"Alt + Shift + g" "Launch File Manager (pcmanfm-qt)" "#ffffff" "Monospace 16" \
"Alt + Shift + e" "Launch Text Editor (kate)" "#cccccc" "Monospace 16" \
"Alt + Shift + b" "Launch Web Browser (firedragon)" "#ffffff" "Monospace 16" \
"Alt + Shift + s" "Launch System Setting (systemsettings)" "#cccccc" "Monospace 16" \
"Alt + Enter" "Launch Terminal (konsole)" "#ffffff" "Monospace 16" \
"Alt + Shift + a" "Launch Terminal (konsole)" "#cccccc" "Monospace 16" \
"Alt + Ctrl + a" "Launch Terminal (sakura)" "#ffffff" "Monospace 16" \
"Alt + Shift + t" "Launch Terminal (konsole)" "#cccccc" "Monospace 16" \
"Alt + Ctrl + t" "Launch Terminal (konsole)" "#ffffff" "Monospace 16" \
"Win + q" "Window Close" "#cccccc" "Monospace 16" \
"Win + f" "Window Fullscreen" "#ffffff" "Monospace 16" \
"Win + m" "Window Maximize" "#cccccc" "Monospace 16" \
"Win + x" "Window / Minimize" "#ffffff" "Monospace 16" \
"Win + d" "Toggle Show Desktop" "#cccccc" "Monospace 16" \
"Win + e" "Window Begin Move" "#ffffff" "Monospace 16" \
"Win + r" "Window Begin Resize" "#cccccc" "Monospace 16" \
"Win + t" "Window / Always on Top" "#ffffff" "Monospace 16" \
"Win + b" "Window / Always on Bottom" "#cccccc" "Monospace 16" \
"Win + y" "Window / Toggle Shade" "#ffffff" "Monospace 16" \
"Win + n" "Window / Toggle Show or Hide Decoration" "#cccccc" "Monospace 16" \
"Win + z" "Window / Toggle Raise or Lower" "#ffffff" "Monospace 16" \
"Win + m" "Window / Move Center" "#cccccc" "Monospace 16" \
"Win + ;" "Window / Decrease Opacity" "#ffffff" "Monospace 16" \
"Win + '" "Window / Increase Opacity" "#cccccc" "Monospace 16" \
"Win + Esc" "Window Switch Previous" "#ffffff" "Monospace 16" \
"Alt + Esc" "Window Switch Next" "#cccccc" "Monospace 16" \
"Win + grave" "Overview (Workspace List)" "#ffffff" "Monospace 16" \
"Win + Tab" "Expose (Window List)" "#cccccc" "Monospace 16" \
"Win + Mouse Left Drag" "Window Move" "#ffffff" "Monospace 16" \
"Win + Mouse Right Drag" "Window Resize" "#cccccc" "Monospace 16" \
"Win + a" "Window Switch Previous" "#ffffff" "Monospace 16" \
"Win + s" "Window Switch Next" "#cccccc" "Monospace 16" \
"Alt + a" "Workspace Switch Previous" "#ffffff" "Monospace 16" \
"Alt + s" "Workspace Switch Next" "#cccccc" "Monospace 16" \
"Alt + Ctrl + 1-9" "Workspace Switch to 1-9" "#ffffff" "Monospace 16" \
"Alt + Shift + 1-9" "Window Send to 1-9" "#cccccc" "Monospace 16" \
"Print" "Screenshot" "#ffffff" "Monospace 16" \
"Win + Print" "Screenshot Current Window" "#cccccc" "Monospace 16" \
"Ctrl + Print" "Screenshot Selected Area" "#ffffff" "Monospace 16" \
"Fn + F5 (XF86MonBrightnessDown)" "Brightness Decrease" "#cccccc" "Monospace 16" \
"Fn + F6 (XF86MonBrightnessUp)" "Brightness Increase" "#ffffff" "Monospace 16" \
"Alt + Shift + [" "Brightness Decrease" "#cccccc" "Monospace 16" \
"Alt + Shift + ]" "Brightness Increase" "#ffffff" "Monospace 16" \
"Alt + Shift + v" "Launch Volume Control (pavucontrol)" "#cccccc" "Monospace 16" \
"Fn + F10 (XF86AudioMute)" "Volume Toggle Mute" "#ffffff" "Monospace 16" \
"Fn + F11 (XF86AudioLowerVolume)" "Volume Decrease" "#cccccc" "Monospace 16" \
"Fn + F12 (XF86AudioRaiseVolume)" "Volume Increase" "#ffffff" "Monospace 16" \
"Alt + m" "Volume Toggle Mute" "#cccccc" "Monospace 16" \
"Alt + Shift + ," "Volume Decrease" "#ffffff" "Monospace 16" \
"Alt + Shift + ." "Volume Increase" "#cccccc" "Monospace 16" \
"Alt + Ctrl + ," "Volume Decrease Slowly" "#ffffff" "Monospace 16" \
"Alt + Ctrl + ." "Volume Increase Slowly" "#cccccc" "Monospace 16" \
