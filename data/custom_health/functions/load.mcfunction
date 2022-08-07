#creates scoreboards
scoreboard objectives add custom_health dummy
scoreboard objectives add custom_health_toggle trigger
scoreboard objectives add custom_health_reset trigger
scoreboard players set custom_health_dummy custom_health 10

tellraw @a [{"text":"Custom Health: ","color":"gold","bold":true},{"text":"Challenge loaded!","color":"dark_green"}]
