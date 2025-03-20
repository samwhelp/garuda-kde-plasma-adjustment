<?php echo($_Data_['Shebang']); ?>


yad --width=1000 --height=600 \
--center \
--title="Garuda Kde Plasma 按鍵綁定" \
--no-buttons \
--list \
--column=按鍵綁定: \
--column=執行動作: \
--column=@fore@ \
--column=@font@ \
--timeout=15 \
--timeout-indicator=right \
"" "" "#6500c1" "Monospace 1" \
"" "15秒後即將關閉此提示對話框！" "#ff0000" "Monospace 16" \
""  "按下「ESC」關閉此提示對話框" "#00ffff" "Monospace 16" \
<?php echo($_Data_['List']); ?>
