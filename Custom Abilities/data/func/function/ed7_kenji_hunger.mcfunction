execute unless score @s ed7.hunger_check matches 1 run title @s actionbar [{"bold":true,"color":"gold","text":"Kenji "},{"bold":false,"color":"gray","text":"has despawned"}]
execute unless score @s ed7.hunger_check matches 1 run playsound minecraft:block.vault.deactivate master @a ~ ~ ~ 1 .5
execute unless score @s ed7.hunger_check matches 1 run effect give @n[tag=ed7.kenji] invisibility 1 255 true
execute unless score @s ed7.hunger_check matches 1 at @n[type=wolf,tag=ed7.kenji] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 .5
execute unless score @s ed7.hunger_check matches 1 at @n[type=wolf,tag=ed7.kenji] run particle minecraft:campfire_cosy_smoke ~ ~.5 ~ .3 .2 .3 0 50
execute unless score @s ed7.hunger_check matches 1 run kill @n[tag=ed7.kenji]
execute unless score @s ed7.hunger_check matches 1 run stopsound @s * minecraft:entity.wolf_grumpy.death
execute unless score @s ed7.hunger_check matches 1 run attribute @s block_break_speed modifier remove ed7.kenji_break_speed
execute unless score @s ed7.hunger_check matches 1 run attribute @s minecraft:submerged_mining_speed modifier remove ed7.kenji_submerged_mining_speed
execute unless score @s ed7.hunger_check matches 1 run attribute @s luck modifier remove ed7.kenji_luck
execute unless score @s ed7.hunger_check matches 1 run scoreboard players reset @s ed7.wolf_toggle

# DEACTIVATION CHECK
scoreboard players set @s ed7.hunger_check 1