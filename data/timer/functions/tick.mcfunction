scoreboard players enable @a timer_switch
scoreboard players enable @a timer_reset

execute if score @r timer_switch matches 1 run tellraw @a [{"text":"Timer: ","color":"gold","bold":true},{"text":"Timer started","color":"dark_green"}]
execute if score @r timer_switch matches 1 run scoreboard players set @a timer_switch 2

execute if score @r timer_switch matches 3 run tellraw @a [{"text":"Timer: ","color":"gold","bold":true},{"text":"Timer stopped!","color":"dark_green"}]
execute if score @r timer_switch matches 3 run scoreboard players set @a timer_switch 0

execute if score @r timer_switch matches 2 run function timer:update_timer

execute if score @r timer_reset matches 1 run function timer:reset_timer

title @a actionbar [{"score":{"name":"timer_dummy","objective":"timer_hours"},"color":"gold","bold":true},{"text":"h "},{"score":{"name":"timer_dummy","objective":"timer_minutes"}},{"text":"m "},{"score":{"name":"timer_dummy","objective":"timer_seconds"}},{"text":"s"}]
