attribute @s movement_speed modifier remove jtd.earth_movement_speed
attribute @s entity_interaction_range modifier remove jtd.earth_entity_interaction_range
attribute @s block_interaction_range modifier remove jtd.earth_block_interaction_range
attribute @s jump_strength modifier remove jtd.earth_jump_strength
attribute @s water_movement_efficiency modifier remove jtd.earth_water_movement_efficiency
attribute @s movement_efficiency modifier remove jtd.earth_movement_efficiency
attribute @s sneaking_speed modifier remove jtd.earth_sneaking_speed
attribute @s knockback_resistance modifier remove jtd.earth_knockback_resistance
attribute @s explosion_knockback_resistance modifier remove jtd.earth_explosion_knockback_resistance
attribute @s armor modifier remove jtd.earth_armor

title @s reset

stopsound @a master entity.creaking.activate
execute unless score @s jtd.health matches 0 at @s run playsound minecraft:entity.creaking.death master @a ~ ~ ~ 1 2
scoreboard players reset @s jtd.ability_earth_2