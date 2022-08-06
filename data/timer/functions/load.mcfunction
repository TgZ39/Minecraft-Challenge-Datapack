scoreboard objectives add timer_ticks dummy
scoreboard objectives add timer_seconds dummy
scoreboard objectives add timer_minutes dummy
scoreboard objectives add timer_hours dummy
scoreboard objectives add timer_switch trigger
scoreboard objectives add timer_reset trigger

scoreboard players set timer_dummy timer_ticks 0
scoreboard players set timer_dummy timer_seconds 0
scoreboard players set timer_dummy timer_minutes 0
scoreboard players set timer_dummy timer_hours 0

tellraw @a {"text":"Challenge: Timer loaded!","color":"red","bold":true}
