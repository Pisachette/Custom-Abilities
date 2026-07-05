# summon kenji
    summon wolf ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"minecraft:empty",Team:"eDRAG0N7",InLove:0,Age:0,Owner:[I;-940922616,-995408748,-1339856027,-349639938],variant:"chestnut",sound_variant:"grumpy",CollarColor:4b,Tags:["ed7.kenji"],CustomName:{"bold":true,"color":"gold","text":"Kenji"},attributes:[{id:"minecraft:attack_damage",base:-1},{id:"minecraft:attack_knockback",base:-1},{id:"minecraft:attack_speed",base:-1},{id:"minecraft:follow_range",base:-1}]}

# spawn message
    title @s actionbar [{"color":"gray","text":"You have summoned "},{"bold":true,"color":"gold","text":"Kenji "}]

# spawn sounds
    execute at @n[type=wolf,tag=ed7.kenji] run playsound entity.item.pickup master @a ~ ~ ~ 1 .5
    execute at @n[type=wolf,tag=ed7.kenji] run playsound minecraft:block.vault.activate master @a ~ ~ ~ 1 .5

# apply player attributes
    attribute @s block_break_speed modifier add ed7.kenji_break_speed .5 add_multiplied_base
    attribute @s minecraft:submerged_mining_speed modifier add ed7.kenji_submerged_mining_speed .5 add_multiplied_base
    attribute @s luck modifier add ed7.kenji_luck 1 add_multiplied_base

# add 1 to toggle score to prevent looping
    scoreboard players add @s ed7.kenji_toggle 1