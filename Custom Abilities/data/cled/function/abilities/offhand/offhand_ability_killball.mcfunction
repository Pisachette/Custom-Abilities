# smoke particles
particle minecraft:campfire_cosy_smoke ~ ~1 ~ .2 .5 .2 0 50
# play smoke sound
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 .5

# give player 1s of slow falling
effect give @s slow_falling 1 0 true

# tp to the nearest minion
tp @s @n[type=#zombies,team=Cledward]

# teleport particles
execute at @n[type=#zombies,team=Cledward] run particle trial_spawner_detection ~ ~1 ~ .2 .5 .2 0 50

# play teleport sound
execute at @n[type=#zombies,team=Cledward] run playsound entity.allay.death master @a ~ ~ ~ 1 .5
execute at @n[type=#zombies,team=Cledward] run playsound entity.enderman.teleport master @a ~ ~ ~

# remove cledball upon teleport
kill @n[type=#zombies,team=Cledward]