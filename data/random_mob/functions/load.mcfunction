#sets up armor_stands
forceload add 0 0
execute unless entity @e[type=armor_stand,tag=random_mob] run function random_mob:summon

#creates scoreboards for timer
scoreboard objectives add mob_ticks dummy
scoreboard objectives add mob_seconds dummy
scoreboard objectives add random_mob_switch trigger
scoreboard objectives add random_mob_reset trigger
scoreboard players set mob_delay mob_seconds 10

tellraw @a [{"text":"Random Mob: ","color":"gold","bold":true},{"text":"Challenge loaded!","color":"dark_green"}]
