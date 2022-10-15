scoreboard players add timer_dummy timer_ticks 1

execute if score timer_dummy timer_ticks matches 20 run scoreboard players add timer_dummy timer_seconds 1
execute if score timer_dummy timer_ticks matches 20 run scoreboard players set timer_dummy timer_ticks 0

execute if score timer_dummy timer_seconds matches 60 run scoreboard players add timer_dummy timer_minutes 1
execute if score timer_dummy timer_seconds matches 60 run scoreboard players set timer_dummy timer_seconds 0

execute if score timer_dummy timer_minutes matches 60 run scoreboard players add timer_dummy timer_hours 1
execute if score timer_dummy timer_minutes matches 60 run scoreboard players set timer_dummy timer_minutes 0
