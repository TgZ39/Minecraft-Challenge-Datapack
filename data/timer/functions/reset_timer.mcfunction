scoreboard players set @a timer_reset 0

scoreboard players set @a timer_toggle 0

scoreboard players set timer_dummy timer_ticks 0
scoreboard players set timer_dummy timer_seconds 0
scoreboard players set timer_dummy timer_minutes 0
scoreboard players set timer_dummy timer_hours 0

tellraw @a [{"text":"Timer: ","color":"gold","bold":true},{"text":"Timer reset!","color":"dark_green"}]
