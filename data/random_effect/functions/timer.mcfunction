scoreboard players add timer_dummy effect_ticks 1

execute if score timer_dummy effect_ticks matches 20 run scoreboard players add timer_dummy effect_seconds 1
execute if score timer_dummy effect_ticks matches 20 run scoreboard players set timer_dummy effect_ticks 0

#gives random effect
execute if score timer_dummy effect_seconds matches 30 run function random_effect:give_effect
execute if score timer_dummy effect_seconds matches 30 run scoreboard players set timer_dummy effect_seconds 0
