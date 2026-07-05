# despawn sound
    execute at @n[type=wolf,tag=ed7.kira] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 .5
    execute at @n[type=wolf,tag=ed7.kira] run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 2

# despawn particles
    execute at @n[type=wolf,tag=ed7.kira] run particle minecraft:campfire_cosy_smoke ~ ~.5 ~ .3 .2 .3 0 50

# make kira invisible before dying
    effect give @n[type=wolf,tag=ed7.kira] invisibility 1 255 true

# remove kira
    kill @e[type=wolf,tag=ed7.kira]

# stop kira death sound
    stopsound @s * minecraft:entity.wolf_angry.death

# reset kira active check to respawn kira
execute if score @s ed7.kira_active matches 1 run scoreboard players reset @s ed7.kira_active

# reset bossbar visibility
    bossbar set minecraft:ed7.kira_duration visible false