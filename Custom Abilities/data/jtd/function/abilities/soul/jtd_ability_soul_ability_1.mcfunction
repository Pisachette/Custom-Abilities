# summon soulswarm
summon vindicator ~ ~ ~ {Silent:1b,CustomNameVisible:1b,DeathLootTable:"minecraft:empty",Team:"JacobTheDragon",PersistenceRequired:1b,CanPickUpLoot:0b,Health:20f,Johnny:1b,Tags:["jtd.soulswarm"],CustomName:{"bold":true,"color":"aqua","text":"Soulswarm"},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b},{id:"minecraft:slow_falling",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:max_health",base:20}]}

# summoning sounds
playsound minecraft:entity.vex.charge master @a ~ ~ ~ 1 .5
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 .5

# mana cost
scoreboard players remove @s jtd.manaBank 10