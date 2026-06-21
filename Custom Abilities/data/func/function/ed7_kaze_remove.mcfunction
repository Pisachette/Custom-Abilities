execute at @n[type=wolf,tag=ed7.kaze] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 .5
execute at @n[type=wolf,tag=ed7.kaze] run particle minecraft:campfire_cosy_smoke ~ ~.5 ~ .3 .2 .3 0 50
effect give @n[type=wolf,tag=ed7.kaze] invisibility 1 255 true
kill @e[type=wolf,tag=ed7.kaze]
stopsound @s * minecraft:entity.wolf_puglin.death

execute if score @s ed7.sprint matches 0 if score @s ed7.sprint_meter matches 60.. at @s run playsound minecraft:entity.breeze.death master @a ~ ~ ~ 1 .5
attribute @s movement_speed modifier remove ed7.kaze_speed
attribute @s step_height modifier remove ed7.kaze_step_height