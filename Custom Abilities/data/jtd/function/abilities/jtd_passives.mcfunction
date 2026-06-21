# ENDER
    # activation sounds
        execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{jtdEnder:true}] if score @s jtd.passive_ender_hunger matches 0 at @s run playsound minecraft:entity.player.burp master @s ~ ~ ~ 1 2
        execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{jtdEnder:true}] if score @s jtd.passive_ender_hunger matches 0 at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 .5
        execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{jtdEnder:true}] if score @s jtd.passive_ender_hunger matches 0 at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 2
    # saturation effect
        execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{jtdEnder:true}] if score @s jtd.passive_ender_hunger matches 0 run effect give @s saturation 1 6 true

# WATER
    execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{jtdWater:true}] run effect give @s water_breathing 1 0 true

# AIR
    execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{jtdAir:true}] run effect give @s slow_falling 1 0 true

# EARTH
    execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{jtdEarth:true}] run effect give @s resistance 1 1 true

# SOUL
    execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{jtdSoul:true}] at @s run execute as @e[team=!JacobTheDragon,distance=..5] run effect give @s slowness 1 1 false

# FIRE
    execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{jtdFire:true}] run effect give @s fire_resistance 1 0 true