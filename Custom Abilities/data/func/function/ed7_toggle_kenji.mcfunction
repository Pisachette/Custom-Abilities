execute unless score @s ed7.hunger matches 0 run scoreboard players add @s ed7.wolf_toggle 1

# INVALID SUMMON MESSAGE
execute if score @s ed7.hunger matches 0 run title @s actionbar [{"color":"red","text":"You cannot summon "},{"bold":true,"color":"gold","text":"Kenji "},{"color":"red","text":"with 0 hunger!"}]
execute if score @s ed7.hunger matches 0 run playsound block.note_block.didgeridoo master @a ~ ~ ~ 1 .5

# ACTIVATION
execute if score @s ed7.wolf_toggle matches 1 unless score @s ed7.hunger matches 0 run title @s actionbar [{"color":"gray","text":"You have summoned "},{"bold":true,"color":"gold","text":"Kenji "}]
execute if score @s ed7.wolf_toggle matches 1 unless score @s ed7.hunger matches 0 run summon wolf ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"minecraft:empty",Team:"eDRAG0N7",InLove:0,Age:0,Owner:[I;-940922616,-995408748,-1339856027,-349639938],variant:"chestnut",sound_variant:"grumpy",CollarColor:4b,Tags:["ed7.kenji"],CustomName:{"bold":true,"color":"gold","text":"Kenji"},attributes:[{id:"minecraft:attack_damage",base:-1},{id:"minecraft:attack_knockback",base:-1},{id:"minecraft:attack_speed",base:-1},{id:"minecraft:follow_range",base:-1}]}
execute if score @s ed7.wolf_toggle matches 1 unless score @s ed7.hunger matches 0 at @n[type=wolf,tag=ed7.kenji] run playsound entity.item.pickup master @a ~ ~ ~ 1 .5
execute if score @s ed7.wolf_toggle matches 1 unless score @s ed7.hunger matches 0 run playsound minecraft:block.vault.activate master @a ~ ~ ~ 1 .5
execute if score @s ed7.wolf_toggle matches 1 unless score @s ed7.hunger matches 0 run attribute @s block_break_speed modifier add ed7.kenji_break_speed .5 add_multiplied_base
execute if score @s ed7.wolf_toggle matches 1 unless score @s ed7.hunger matches 0 run attribute @s minecraft:submerged_mining_speed modifier add ed7.kenji_submerged_mining_speed .5 add_multiplied_base
execute if score @s ed7.wolf_toggle matches 1 unless score @s ed7.hunger matches 0 run attribute @s luck modifier add ed7.kenji_luck 1 add_multiplied_base

# DEACTIVATION
execute if score @s ed7.wolf_toggle matches 2 run title @s actionbar [{"color":"gray","text":"You have despawned "},{"bold":true,"color":"gold","text":"Kenji "}]
execute if score @s ed7.wolf_toggle matches 2 run playsound minecraft:block.vault.deactivate master @a ~ ~ ~ 1 .5
execute if score @s ed7.wolf_toggle matches 2 run effect give @n[tag=ed7.kenji] invisibility 1 255 true
execute if score @s ed7.wolf_toggle matches 2 at @n[type=wolf,tag=ed7.kenji] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 .5
execute if score @s ed7.wolf_toggle matches 2 at @n[type=wolf,tag=ed7.kenji] run particle minecraft:campfire_cosy_smoke ~ ~.5 ~ .3 .2 .3 0 50
execute if score @s ed7.wolf_toggle matches 2 run kill @n[tag=ed7.kenji]
execute if score @s ed7.wolf_toggle matches 2 run stopsound @s * minecraft:entity.wolf_grumpy.death
execute if score @s ed7.wolf_toggle matches 2 run attribute @s block_break_speed modifier remove ed7.kenji_break_speed
execute if score @s ed7.wolf_toggle matches 2 run attribute @s minecraft:submerged_mining_speed modifier remove ed7.kenji_submerged_mining_speed
execute if score @s ed7.wolf_toggle matches 2 run attribute @s luck modifier remove ed7.kenji_luck
execute if score @s ed7.wolf_toggle matches 2.. run scoreboard players reset @s ed7.wolf_toggle