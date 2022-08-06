#creates scoreboards
scoreboard objectives add custom_health dummy
scoreboard objectives add custom_health_switch trigger
scoreboard objectives add custom_health_reset trigger
scoreboard players set custom_health_dummy custom_health 10

tellraw @a {"text":"Challenge: Custom Health Challenge loaded!","color":"red","bold":true}
