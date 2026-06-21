# smoke particles
particle minecraft:campfire_cosy_smoke ~ ~1 ~ .2 .5 .2 0 50
# play smoke sound
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 .5

# give player 1s of slow falling
effect give @s slow_falling 1 0 true

# tp to the nearest cledball
tp @s @n[type=item_display,tag=cled.cledball_projectile]

# teleport particles
execute at @n[type=item_display,tag=cled.cledball_projectile] run particle minecraft:totem_of_undying ~ ~1 ~ .2 .5 .2 .2 50

# play teleport sound
execute at @n[type=item_display,tag=cled.cledball_projectile] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
execute at @n[type=item_display,tag=cled.cledball_projectile] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~

# remove cledball upon teleport
kill @n[type=item_display,tag=cled.cledball_projectile]