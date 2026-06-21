kill @n[type=interaction,tag=jtd.soul_trap]
kill @n[type=block_display,tag=jtd.soul_trap]
playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 .5
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 .5

summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,Glowing:1b,DeathLootTable:"minecraft:empty",Team:"JacobTheDragon",PersistenceRequired:1b,NoAI:1b,Health:10f,Size:0,Tags:["jtd.trap_slime"],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:10},{id:"minecraft:scale",base:4}]}
scoreboard players set @s jtd.soul_trap_trapped 1