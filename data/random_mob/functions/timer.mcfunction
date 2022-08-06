scoreboard players add timer_dummy mob_ticks 1

execute if score timer_dummy mob_ticks matches 20 run scoreboard players add timer_dummy mob_seconds 1
execute if score timer_dummy mob_ticks matches 20 run scoreboard players set timer_dummy mob_ticks 0

#spawns random mob
execute if score timer_dummy mob_seconds = mob_delay run function random_mob:spawn_mob
execute if score timer_dummy mob_seconds = mob_delay run scoreboard players set timer_dummy mob_seconds 0
