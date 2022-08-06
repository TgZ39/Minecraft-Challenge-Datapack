scoreboard players enable @a timer_switch
scoreboard players enable @a timer_reset

execute if score @r timer_switch matches 1 run tellraw @a {"text":"Challenge: Timer started!","color":"green","bold":true}
execute if score @r timer_switch matches 1 run scoreboard players set @a timer_switch 2

execute if score @r timer_switch matches 3 run tellraw @a {"text":"Challenge: Timer stopped!","color":"green","bold":true}
execute if score @r timer_switch matches 3 run scoreboard players set @a timer_switch 0

execute if score @r timer_switch matches 2 run function timer:update_timer

execute if score @r timer_reset matches 1 run function timer:reset_timer

title @a actionbar [{"text":"Timer: ","color":"white","bold":true},{"score":{"name":"timer_dummy","objective":"timer_hours"}},{"text":":"},{"score":{"name":"timer_dummy","objective":"timer_minutes"}},{"text":":"},{"score":{"name":"timer_dummy","objective":"timer_seconds"}}]
