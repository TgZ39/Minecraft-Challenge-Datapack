#enables trigger commands
scoreboard players enable @a random_effect_switch
scoreboard players enable @a random_effect_reset

#loades timer
execute if score @r random_effect_switch matches 1 run tellraw @a {"text":"Challenge: Random Effect Challenge started!","color":"green","bold":true}
execute if score @r random_effect_switch matches 1 run scoreboard players set @a random_effect_switch 2
execute if score @r random_effect_switch matches 2 run function random_effect:timer

execute if score @r random_effect_switch matches 3 run tellraw @a {"text":"Challenge: Random Effect Challenge stopped!","color":"green","bold":true}
execute if score @r random_effect_switch matches 3 run scoreboard players set @a random_effect_switch 0

#resets Challenge
execute if score @r random_effect_reset matches 1 run function random_effect:reset_challenge
execute if score @r random_effect_reset matches 1 run tellraw @a {"text":"Challenge: Random Effect Challenge reset!","color":"green","bold":true}
execute if score @r random_effect_reset matches 1 run scoreboard players set @a random_effect_reset 0
