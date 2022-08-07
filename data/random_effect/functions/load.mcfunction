#sets up armor_stands
forceload add 0 0
execute unless entity @e[type=armor_stand,tag=randomeffect] run function random_effect:summon

#creates scoreboards for timer
scoreboard objectives add effect_ticks dummy
scoreboard objectives add effect_seconds dummy
scoreboard objectives add random_effect_switch trigger
scoreboard objectives add random_effect_reset trigger
scoreboard players set effect_delay effect_seconds 30

tellraw @a [{"text":"Random Effect: ","color":"gold","bold":true},{"text":"Challenge loaded!","color":"dark_green"}]
