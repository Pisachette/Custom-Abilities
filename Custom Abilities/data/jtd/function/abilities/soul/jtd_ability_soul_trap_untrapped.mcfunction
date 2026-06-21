attribute @s jump_strength modifier remove jtd.soul_trap_jump
attribute @s movement_speed modifier remove jtd.soul_trap_walk
attribute @s water_movement_efficiency modifier remove jtd.soul_trap_swim
attribute @s sneaking_speed modifier remove jtd.soul_trap_sneak

title @s times 0 20 10
title @s title {"bold":true,"color":"aqua","text":"FREE!"}
title @s subtitle {"color":"gray","text":"You escaped!"}

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
playsound minecraft:entity.allay.death master @a ~ ~ ~ 1 2
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 .5

scoreboard players reset @s jtd.soul_trap_trapped