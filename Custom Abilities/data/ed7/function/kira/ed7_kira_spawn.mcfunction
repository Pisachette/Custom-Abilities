# make kira bossbar visible
    bossbar set minecraft:ed7.kira_duration visible true

# spawn sounds
    playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2
    playsound entity.item.pickup master @a ~ ~ ~ 1 .5

# spawn kira
    summon wolf ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"minecraft:empty",Team:"eDRAG0N7",InLove:0,Age:0,Owner:[I;-940922616,-995408748,-1339856027,-349639938],variant:"striped",sound_variant:"angry",CollarColor:14b,Tags:["ed7.kira"],CustomName:{"bold":true,"color":"dark_red","text":"Kira"},attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:movement_speed",base:.4}]}

# set active score to 1 to prevent the player from summoning another wolf while this one is active
scoreboard players set @s ed7.kira_active 1