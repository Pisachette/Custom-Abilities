# despawn sounds
    execute at @n[type=wolf,tag=ed7.kenzo] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 .5
    execute at @n[type=wolf,tag=ed7.kenzo] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2

# despawn particles
    execute at @n[type=wolf,tag=ed7.kenzo] run particle minecraft:campfire_cosy_smoke ~ ~.5 ~ .3 .2 .3 0 50

# make kenzo invisible before death
    effect give @n[type=wolf,tag=ed7.kenzo] invisibility 1 255 true

# remove kenzo
    kill @e[type=wolf,tag=ed7.kenzo]

# stop kenzo death sound
    stopsound @a * minecraft:entity.wolf_cute.death

# reset kenzo heal ability cooldown
    scoreboard players reset @s ed7.kenzo_heal_cooldown

# reset kenzo active check
    scoreboard players reset @s ed7.kenzo_active