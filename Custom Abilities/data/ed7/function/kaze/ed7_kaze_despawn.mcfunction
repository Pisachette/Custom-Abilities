# despawn sounds
    execute at @n[type=wolf,tag=ed7.kaze] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 .5
    execute if score @s ed7.player_health matches 1.. run playsound minecraft:entity.breeze.death master @a ~ ~ ~ 1 .5

# despawn particles
    execute at @n[type=wolf,tag=ed7.kaze] run particle minecraft:campfire_cosy_smoke ~ ~.5 ~ .3 .2 .3 0 50

# make kaze invisible before dying
    effect give @n[type=wolf,tag=ed7.kaze] invisibility 1 255 true

# remove kaze
    kill @e[type=wolf,tag=ed7.kaze]

# stop kaze death sound
    stopsound @a * minecraft:entity.wolf_puglin.death

# remove player attributes
    attribute @s movement_speed modifier remove ed7.kaze_speed
    attribute @s step_height modifier remove ed7.kaze_step_height

# reset kaze check score for respawn
    scoreboard players reset @s ed7.kaze_check