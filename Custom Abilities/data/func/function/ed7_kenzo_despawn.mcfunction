execute at @n[type=wolf,tag=ed7.kenzo] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 .5
execute at @n[type=wolf,tag=ed7.kenzo] run particle minecraft:campfire_cosy_smoke ~ ~.5 ~ .3 .2 .3 0 50
effect give @n[type=wolf,tag=ed7.kenzo] invisibility 1 255 true
execute at @n[type=wolf,tag=ed7.kenzo] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2
kill @e[type=wolf,tag=ed7.kenzo]
stopsound @s * minecraft:entity.wolf_cute.death
scoreboard players reset @s ed7.kenzo_active
scoreboard players reset @s ed7.kenzo_health_cooldown

kill @e[type=marker,tag=ed7.kenzo_radiusMarker]
