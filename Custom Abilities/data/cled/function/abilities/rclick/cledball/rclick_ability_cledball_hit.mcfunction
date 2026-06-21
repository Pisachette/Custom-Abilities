# play hit sound
    playsound minecraft:entity.fishing_bobber.splash master @a ~ ~ ~ 1 2
# hit particles
    particle minecraft:totem_of_undying ~ ~ ~ .1 .1 .1 .5 20

# damage nearby entities
    execute as @e[distance=..3,team=!Cledward,tag=!cled.cledball_projectile] run damage @s 3 sonic_boom by @n[type=item_display,tag=cled.cledball_projectile]

# remove the cledball
    kill @s