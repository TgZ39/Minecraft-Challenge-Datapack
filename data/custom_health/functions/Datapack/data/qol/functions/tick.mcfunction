scoreboard objectives enable gui @a

execute if score @r gui matches 1 run tellraw @a [{"text":"Qol: ","color":"gold","bold":true},{"text":"Gave Book!","color":"dark_green"}]
execute if score @r gui matches 1 run function qol:give_gui
execute if score @r gui matches 1 run scoreboard players set @a gui 0
