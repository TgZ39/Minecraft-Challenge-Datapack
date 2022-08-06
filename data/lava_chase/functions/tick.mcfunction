#enables trigger commands
scoreboard players enable @a lava_chase_switch

#loades timer
execute if score @r lava_chase_switch matches 1 run tellraw @a {"text":"Challenge: Lava Chase Challenge started!","color":"green","bold":true}
execute if score @r lava_chase_switch matches 1 run scoreboard players set @a lava_chase_switch 2
execute if score @r lava_chase_switch matches 2 run function lava_chase:place_lava

execute if score @r lava_chase_switch matches 3 run tellraw @a {"text":"Challenge: Lava Chase Challenge stopped!","color":"green","bold":true}
execute if score @r lava_chase_switch matches 3 run scoreboard players set @a lava_chase_switch 0
