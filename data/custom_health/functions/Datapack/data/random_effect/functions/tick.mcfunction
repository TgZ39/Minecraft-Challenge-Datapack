#enables trigger commands
scoreboard players enable @a random_effect_toggle
scoreboard players enable @a random_effect_reset

#loades timer
execute if score @r random_effect_toggle matches 1 run tellraw @a [{"text":"Random Effect: ","color":"gold","bold":true},{"text":"Challenge started!","color":"dark_green"}]
execute if score @r random_effect_toggle matches 1 run scoreboard players set @a random_effect_toggle 2
execute if score @r random_effect_toggle matches 2 if score @r timer_toggle matches 2 run function random_effect:timer

execute if score @r random_effect_toggle matches 3 run tellraw @a [{"text":"Random Effect: ","color":"gold","bold":true},{"text":"Challenge stopped!","color":"dark_green"}]
execute if score @r random_effect_toggle matches 3 run scoreboard players set @a random_effect_toggle 0

#resets Challenge
execute if score @r random_effect_reset matches 1 run function random_effect:reset_challenge
execute if score @r random_effect_reset matches 1 run tellraw @a [{"text":"Random Effect: ","color":"gold","bold":true},{"text":"Challenge reset!","color":"dark_green"}]
execute if score @r random_effect_reset matches 1 run scoreboard players set @a random_effect_reset 0
