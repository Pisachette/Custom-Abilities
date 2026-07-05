# spawn kenzo
    summon wolf ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"minecraft:empty",Team:"eDRAG0N7",InLove:0,Age:0,Owner:[I;-940922616,-995408748,-1339856027,-349639938],variant:"rusty",sound_variant:"cute",CollarColor:5b,Tags:["ed7.kenzo"],CustomName:{"bold":true,"color":"green","text":"Kenzo"},attributes:[{id:"minecraft:attack_damage",base:-1},{id:"minecraft:attack_knockback",base:-1},{id:"minecraft:attack_speed",base:-1},{id:"minecraft:follow_range",base:-1}]}

# spawn sounds
    playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
    playsound entity.item.pickup master @a ~ ~ ~ 1 .5

# set active check to 1
    scoreboard players set @s ed7.kenzo_active 1