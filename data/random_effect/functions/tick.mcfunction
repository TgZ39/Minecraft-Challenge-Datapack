#enables trigger commands
scoreboard players enable @a effect_challenge_switch
scoreboard players enable @a effect_challenge_reset

#loades timer
execute if score @r effect_challenge_switch matches 1 run tellraw @a {"text":"Challenge: Random Effect Challenge started!","color":"green","bold":true}
execute if score @r effect_challenge_switch matches 1 run scoreboard players set @a effect_challenge_switch 2
execute if score @r effect_challenge_switch matches 2 run function random_effect:timer

execute if score @r effect_challenge_switch matches 3 run tellraw @a {"text":"Challenge: Random Effect Challenge stopped!","color":"green","bold":true}
execute if score @r effect_challenge_switch matches 3 run scoreboard players set @a effect_challenge_switch 0

#resets Challenge
execute if score @r effect_challenge_reset matches 1 run function random_effect:reset_challenge
execute if score @r effect_challenge_reset matches 1 run tellraw @a {"text":"Challenge: Random Effect Challenge reset!","color":"green","bold":true}
execute if score @r effect_challenge_reset matches 1 run scoreboard players set @a effect_challenge_reset 0
