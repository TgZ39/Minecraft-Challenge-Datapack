#enables trigger commands
scoreboard players enable @a custom_health_switch
scoreboard players enable @a custom_health_reset

#starts Challenge
execute if score @r custom_health_switch matches 1 run tellraw @a {"text":"Challenge: Custom Health Challenge started!","color":"green","bold":true}
execute if score @r custom_health_switch matches 1 run function custom_health:set_health
execute if score @r custom_health_switch matches 1 run scoreboard players set @a custom_health_switch 2

#stops Challenge
execute if score @r custom_health_switch matches 3 run tellraw @a {"text":"Challenge: Custom Health Challenge stopped!","color":"green","bold":true}
execute if score @r custom_health_switch matches 3 run scoreboard players set @a custom_health_switch 0

#resets Challenge
execute if score @r custom_health_reset matches 1 run function custom_health:reset_challenge
execute if score @r custom_health_reset matches 1 run tellraw @a {"text":"Challenge: Custom Health Challenge reset!","color":"green","bold":true}
execute if score @r custom_health_reset matches 1 run scoreboard players set @a custom_health_reset 0
