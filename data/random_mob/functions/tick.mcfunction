#enables trigger commands
scoreboard players enable @a random_mob_switch
scoreboard players enable @a random_mob_reset

#loades timer
execute if score @r random_mob_switch matches 1 run tellraw @a [{"text":"Random Mob: ","color":"gold","bold":true},{"text":"Challenge started!","color":"dark_green"}]
execute if score @r random_mob_switch matches 1 run scoreboard players set @a random_mob_switch 2
execute if score @r random_mob_switch matches 2 run function random_mob:timer

execute if score @r random_mob_switch matches 3 run tellraw @a [{"text":"Random Mob: ","color":"gold","bold":true},{"text":"Challenge stopped!","color":"dark_green"}]
execute if score @r random_mob_switch matches 3 run scoreboard players set @a random_mob_switch 0

#resets Challenge
execute if score @r random_mob_reset matches 1 run function random_mob:reset_challenge
execute if score @r random_mob_reset matches 1 run tellraw @a [{"text":"Random Mob: ","color":"gold","bold":true},{"text":"Challenge reset!","color":"dark_green"}]
execute if score @r random_mob_reset matches 1 run scoreboard players set @a random_mob_reset 0
