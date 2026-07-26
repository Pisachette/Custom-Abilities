# increase timer for active dragonbreath time
    scoreboard players add @s ntd.dragonbreath_active 1

# siphon dragonbreath fuel
    execute unless score @s ntd.dragonbreath_fuel matches 1 run scoreboard players remove @s ntd.dragonbreath_fuel 2

# MARKERS
    # spawn dragonbreath markers
        execute if score @s ntd.dragonbreath_active matches 1 run summon marker ~ ~1.625 ~ {Tags:["ntd.db","ntd.db_anchor"]}
        execute if score @s ntd.dragonbreath_active matches 4 run summon marker ^ ^ ^1 {Tags:["ntd.db","ntd.db_1"]}
        execute if score @s ntd.dragonbreath_active matches 8 run summon marker ^ ^ ^2 {Tags:["ntd.db","ntd.db_2"]}
        execute if score @s ntd.dragonbreath_active matches 12 run summon marker ^ ^ ^3 {Tags:["ntd.db","ntd.db_3"]}
        execute if score @s ntd.dragonbreath_active matches 16 run summon marker ^ ^ ^4 {Tags:["ntd.db","ntd.db_4"]}
        execute if score @s ntd.dragonbreath_active matches 20 run summon marker ^ ^ ^5 {Tags:["ntd.db","ntd.db_5"]}
    # position dragonbreath markers
        execute at @a[team=NicTheDragon] run tp @n[type=marker,tag=ntd.db_anchor] ~ ~1.625 ~ ~ ~
        execute at @e[type=marker,tag=ntd.db_anchor] run tp @n[type=marker,tag=ntd.db_1] ^ ^ ^1
        execute at @e[type=marker,tag=ntd.db_anchor] run tp @n[type=marker,tag=ntd.db_2] ^ ^ ^2
        execute at @e[type=marker,tag=ntd.db_anchor] run tp @n[type=marker,tag=ntd.db_3] ^ ^ ^3
        execute at @e[type=marker,tag=ntd.db_anchor] run tp @n[type=marker,tag=ntd.db_4] ^ ^ ^4
        execute at @e[type=marker,tag=ntd.db_anchor] run tp @n[type=marker,tag=ntd.db_5] ^ ^ ^5

# MARKER FX
    # particles
        execute at @e[type=marker,tag=ntd.db_1] run particle reverse_portal ~ ~ ~ 0.25 0.25 0.25 0 2
        execute at @e[type=marker,tag=ntd.db_2] run particle reverse_portal ~ ~ ~ 0.3 0.3 0.3 0 3
        execute at @e[type=marker,tag=ntd.db_3] run particle reverse_portal ~ ~ ~ 0.3 0.3 0.3 0 3
        execute at @e[type=marker,tag=ntd.db_4] run particle reverse_portal ~ ~ ~ 0.4 0.4 0.4 0 4
        execute at @e[type=marker,tag=ntd.db_5] run particle reverse_portal ~ ~ ~ 0.5 0.5 0.5 0 5
    
    # sound fx
        # active sounds
            execute if score @s ntd.dragonbreath_active matches 2 run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 .5
            execute if score @s ntd.dragonbreath_active matches 2.. run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 .5
        # stop deactivation sounds
            execute if score @s ntd.dragonbreath_active matches 2.. run stopsound @a master entity.blaze.death
            execute if score @s ntd.dragonbreath_active matches 2.. run stopsound @a master entity.player.breath

    # damage fx
        execute at @e[type=marker,tag=ntd.db,tag=!ntd.db_anchor] run execute as @e[team=!NicTheDragon,distance=..2] run damage @s 5 magic by @n[type=player,team=NicTheDragon]
        execute at @e[type=marker,tag=ntd.db,tag=!ntd.db_anchor] run execute as @e[team=!NicTheDragon,distance=..2] run effect give @s weakness 3 2 true
        execute at @e[type=marker,tag=ntd.db,tag=!ntd.db_anchor] run execute as @e[team=!NicTheDragon,distance=..2] run effect give @s slowness 3 2 true