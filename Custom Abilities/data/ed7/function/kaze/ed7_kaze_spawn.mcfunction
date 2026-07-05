# summon kaze
    summon wolf ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"minecraft:empty",Team:"eDRAG0N7",InLove:0,Age:0,Owner:[I;-940922616,-995408748,-1339856027,-349639938],variant:"ashen",sound_variant:"puglin",CollarColor:9b,Tags:["ed7.kaze"],CustomName:{"bold":true,"color":"dark_aqua","text":"Kaze"},attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:attack_knockback",base:0},{id:"minecraft:attack_speed",base:0},{id:"minecraft:follow_range",base:0},{id:"minecraft:movement_speed",base:.55}]}

# spawn sounds
    playsound entity.item.pickup master @a ~ ~ ~ 1 .5
    playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 1 .5

# apply player attributes
    attribute @s movement_speed modifier add ed7.kaze_speed 1 add_multiplied_base
    attribute @s step_height modifier add ed7.kaze_step_height 1 add_multiplied_base

# kaze spawn check
    scoreboard players set @s ed7.kaze_check 1