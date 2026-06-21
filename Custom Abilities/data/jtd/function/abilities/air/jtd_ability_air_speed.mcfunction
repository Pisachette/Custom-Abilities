execute unless score @s jtd.ability_air_windborneSprintDecay matches 30.. at @s run particle white_smoke ~ ~1 ~ 0 .4 0 0 2

execute if score @s jtd.ability_air_windborneSprintDuration matches 10 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_1 .1 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 10 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s step_height modifier add jtd.windbornestepheight 1.5 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 10 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 5 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.1

execute if score @s jtd.ability_air_windborneSprintDuration matches 20 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_1
execute if score @s jtd.ability_air_windborneSprintDuration matches 20 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_2 .2 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 20 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 15 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.1

execute if score @s jtd.ability_air_windborneSprintDuration matches 30 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_2
execute if score @s jtd.ability_air_windborneSprintDuration matches 30 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_3 .3 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 30 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 25 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.2

execute if score @s jtd.ability_air_windborneSprintDuration matches 40 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_3
execute if score @s jtd.ability_air_windborneSprintDuration matches 40 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_4 .4 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 40 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 35 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.2

execute if score @s jtd.ability_air_windborneSprintDuration matches 50 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_4
execute if score @s jtd.ability_air_windborneSprintDuration matches 50 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_5 .5 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 50 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 45 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.3

execute if score @s jtd.ability_air_windborneSprintDuration matches 60 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_5
execute if score @s jtd.ability_air_windborneSprintDuration matches 60 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_6 .6 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 60 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 55 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.3

execute if score @s jtd.ability_air_windborneSprintDuration matches 70 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_6
execute if score @s jtd.ability_air_windborneSprintDuration matches 70 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_7 .7 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 70 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 65 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.4

execute if score @s jtd.ability_air_windborneSprintDuration matches 80 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_7
execute if score @s jtd.ability_air_windborneSprintDuration matches 80 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_8 .8 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 80 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 75 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.4

execute if score @s jtd.ability_air_windborneSprintDuration matches 90 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_8
execute if score @s jtd.ability_air_windborneSprintDuration matches 90 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_9 .9 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 90 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 85 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.5

execute if score @s jtd.ability_air_windborneSprintDuration matches 100 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_9
execute if score @s jtd.ability_air_windborneSprintDuration matches 100 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_10 1 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 100 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 95 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.5

execute if score @s jtd.ability_air_windborneSprintDuration matches 110 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_10
execute if score @s jtd.ability_air_windborneSprintDuration matches 110 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_11 1.1 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 110 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 105 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.6

execute if score @s jtd.ability_air_windborneSprintDuration matches 120 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_11
execute if score @s jtd.ability_air_windborneSprintDuration matches 120 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_12 1.2 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 120 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 115 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.6

execute if score @s jtd.ability_air_windborneSprintDuration matches 130 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_12
execute if score @s jtd.ability_air_windborneSprintDuration matches 130 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_13 1.3 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 130 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 125 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.7

execute if score @s jtd.ability_air_windborneSprintDuration matches 140 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_13
execute if score @s jtd.ability_air_windborneSprintDuration matches 140 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_14 1.4 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 140 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 135 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.7

execute if score @s jtd.ability_air_windborneSprintDuration matches 150 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_14
execute if score @s jtd.ability_air_windborneSprintDuration matches 150 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_15 1.5 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 150 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 145 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.8

execute if score @s jtd.ability_air_windborneSprintDuration matches 160 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_15
execute if score @s jtd.ability_air_windborneSprintDuration matches 160 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_16 1.6 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 160 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 155 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.8

execute if score @s jtd.ability_air_windborneSprintDuration matches 170 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_16
execute if score @s jtd.ability_air_windborneSprintDuration matches 170 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_17 1.7 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 170 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 165 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.9

execute if score @s jtd.ability_air_windborneSprintDuration matches 180 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_17
execute if score @s jtd.ability_air_windborneSprintDuration matches 180 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_18 1.8 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 180 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 175 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.9

execute if score @s jtd.ability_air_windborneSprintDuration matches 190 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_18
execute if score @s jtd.ability_air_windborneSprintDuration matches 190 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_19 1.9 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 190 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 185 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 2

execute if score @s jtd.ability_air_windborneSprintDuration matches 200 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier remove jtd.windbornesprint_19
execute if score @s jtd.ability_air_windborneSprintDuration matches 200 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run attribute @s movement_speed modifier add jtd.windbornesprint_20 2 add_multiplied_base
execute if score @s jtd.ability_air_windborneSprintDuration matches 200 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. run scoreboard players remove @s jtd.manaBank 1
execute if score @s jtd.ability_air_windborneSprintDuration matches 195 unless score @s jtd.manaBank matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 1.. at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 2

execute if score @s jtd.ability_air_windborneSprintDuration matches 200.. run scoreboard players add @s jtd.ability_air_windborneManaDrainLoop 1