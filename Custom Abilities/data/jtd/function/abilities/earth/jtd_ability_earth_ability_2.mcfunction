attribute @s movement_speed modifier add jtd.earth_movement_speed -1 add_multiplied_base
attribute @s entity_interaction_range modifier add jtd.earth_entity_interaction_range -1 add_multiplied_base
attribute @s block_interaction_range modifier add jtd.earth_block_interaction_range -1 add_multiplied_base
attribute @s jump_strength modifier add jtd.earth_jump_strength -1 add_multiplied_base
attribute @s water_movement_efficiency modifier add jtd.earth_water_movement_efficiency -1 add_multiplied_base
attribute @s movement_efficiency modifier add jtd.earth_movement_efficiency -1 add_multiplied_base
attribute @s sneaking_speed modifier add jtd.earth_sneaking_speed -1 add_multiplied_base
attribute @s knockback_resistance modifier add jtd.earth_knockback_resistance 1 add_value
attribute @s explosion_knockback_resistance modifier add jtd.earth_explosion_knockback_resistance 1 add_value
attribute @s armor modifier add jtd.earth_armor 2048 add_value

effect give @s resistance 1 255 true

title @s times 0 2 0
title @s title {"bold":true,"color":"green","italic":false,"text":" "}
title @s subtitle {"bold":true,"color":"green","text":"♣ Statue ♣"}

execute at @s run particle minecraft:composter ~ ~.8 ~ .2 .4 .2 0 1
execute at @s run particle minecraft:tinted_leaves{color:0x00FF00} ~ ~.8 ~ .2 .4 .2 0 1

stopsound @a master entity.creaking.death
execute unless score @s jtd.ability_earth_2 matches 1 at @s run playsound minecraft:entity.creaking.activate master @a ~ ~ ~ 1 2
scoreboard players set @s jtd.ability_earth_2 1