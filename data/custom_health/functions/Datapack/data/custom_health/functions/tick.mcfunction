#enables trigger commands
scoreboard players enable @a custom_health_toggle
scoreboard players enable @a custom_health_reset

#starts Challenge
execute if score @r custom_health_toggle matches 1 run tellraw @a [{"text":"Custom Health: ","color":"gold","bold":true},{"text":"Challenge started!","color":"dark_green"}]
execute if score @r custom_health_toggle matches 1 run function custom_health:set_health
execute if score @r custom_health_toggle matches 1 run scoreboard players set @a custom_health_toggle 2

#stops Challenge
execute if score @r custom_health_toggle matches 3 run tellraw @a [{"text":"Custom Health: ","color":"gold","bold":true},{"text":"Challenge stopped!","color":"dark_green"}]
execute if score @r custom_health_toggle matches 3 run scoreboard players set @a custom_health_toggle 0

#resets Challenge
execute if score @r custom_health_reset matches 1 run function custom_health:reset_challenge
execute if score @r custom_health_reset matches 1 run tellraw @a [{"text":"Custom Health: ","color":"gold","bold":true},{"text":"Challenge reset!","color":"dark_green"}]
execute if score @r custom_health_reset matches 1 run scoreboard players set @a custom_health_reset 0

execute if score @r custom_health_update matches 1 run function custom_health:set_health
execute if score @r custom_health_update matches 1 run tellraw @a [{"text":"Custom Health: ","color":"gold","bold":true},{"text":"Challenge reset!","color":"dark_green"}]
execute if score @r custom_health_update matches 1 run scoreboard players set @a custom_health_update 0
