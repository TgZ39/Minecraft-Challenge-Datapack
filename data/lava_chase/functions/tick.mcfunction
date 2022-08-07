#enables trigger commands
scoreboard players enable @a lava_chase_toggle

#loades timer
execute if score @r lava_chase_toggle matches 1 run tellraw @a [{"text":"Lava Chase: ","color":"gold","bold":true},{"text":"Challenge started!","color":"dark_green"}]
execute if score @r lava_chase_toggle matches 1 run scoreboard players set @a lava_chase_toggle 2
execute if score @r lava_chase_toggle matches 2 run function lava_chase:place_lava

execute if score @r lava_chase_toggle matches 3 run tellraw @a [{"text":"Lava Chase: ","color":"gold","bold":true},{"text":"Challenge stopped!","color":"dark_green"}]
execute if score @r lava_chase_toggle matches 3 run scoreboard players set @a lava_chase_toggle 0
