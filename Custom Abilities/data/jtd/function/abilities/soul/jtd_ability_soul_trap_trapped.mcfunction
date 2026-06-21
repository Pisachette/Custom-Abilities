attribute @s jump_strength modifier add jtd.soul_trap_jump -1 add_multiplied_base
attribute @s movement_speed modifier add jtd.soul_trap_walk -1 add_multiplied_base
attribute @s water_movement_efficiency modifier add jtd.soul_trap_swim -1 add_multiplied_base
attribute @s sneaking_speed modifier add jtd.soul_trap_sneak -1 add_multiplied_base

title @s times 0 40 20
title @s title {"bold":true,"color":"red","text":"STUCK!"}
title @s subtitle {"color":"gray","text":"Attack to escape!"}

effect give @s glowing 1 0 true