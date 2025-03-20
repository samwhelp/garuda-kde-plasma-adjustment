<?php echo($_Data_['Shebang']); ?>


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
<?php echo($_Data_['List']); ?>
