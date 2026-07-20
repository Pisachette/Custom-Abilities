# boomstick fx
    # sounds
        # throw
            execute if score @s dino.boomstick_throw matches 1 at @s run playsound minecraft:entity.witch.throw master @a ~ ~ ~ 1 .5
        # boomstick in-air
            execute at @e[type=marker,tag=dino.boomstick_marker] run playsound minecraft:entity.breeze.charge master @a ~ ~ ~ 1 2
    # particles
        execute at @e[type=marker,tag=dino.boomstick_marker] run particle crit ~ ~ ~ 0 0 0 0 1
        
# summon the boomstick projectile and marker when right-clicking boomstick
    # trajectory marker
        execute if score @s dino.boomstick_throw matches 1 at @s run summon marker ~ ~ ~ {Tags:["dino.boomstick_marker","dino.boomstick"],CustomName:{"bold":true,"color":"red","text":"Boomstick"}}
    # item display
        execute if score @s dino.boomstick_throw matches 1 at @s run summon item_display ~ ~1.625 ~ {billboard:"fixed",Tags:["dino.boomstick_projectile","dino.boomstick"],CustomName:{"bold":true,"color":"red","text":"Boomstick"},item:{id:"minecraft:blaze_rod",count:1}}

# increment the boomstick markers lifetime
    scoreboard players add @e[tag=dino.boomstick] dino.boomstick_lifetime 1

# TRAJECTORY
    # constantly teleport the display to the marker
        execute as @e[type=item_display,tag=dino.boomstick_projectile] at @s at @n[type=marker,tag=dino.boomstick_marker] run tp @s ~ ~ ~
    # orient the boomstick marker to the players rotation upon summon
        execute as @e[tag=dino.boomstick_marker,type=marker] if score @s dino.boomstick_lifetime matches 1 at @n[team=Dinomyte08,type=player] run tp @s ~ ~1.625 ~ ~ ~
    # rotate the boomstick display to have a flat trajectory
        execute as @e[tag=dino.boomstick_projectile,type=item_display] if score @s dino.boomstick_lifetime matches 1 at @s run tp @s ~ ~ ~ ~ 90
    # rotate the boomstick display so it spins during travel
        execute as @e[tag=dino.boomstick_projectile,type=item_display] at @s run tp @s ~ ~ ~ ~-45 ~
    # boomstick trajectory mechanics
        execute as @e[type=marker,tag=dino.boomstick_marker] at @s run function dino:abilities/ability_boomstick_trajectory

# boomstick hit block/entity
    # block
        execute as @e[type=marker,tag=dino.boomstick_marker] at @s unless block ~ ~ ~ #dino:boomstick_passthrough_blocks run function dino:abilities/ability_boomstick_hit
    # entity
        execute as @e[type=marker,tag=dino.boomstick_marker] at @s if entity @e[type=!#dino:boomstick_passthrough_entities,distance=..2.5,team=!Dinomyte08] run function dino:abilities/ability_boomstick_hit

# remove boomstick item upon use
    execute if score @s dino.boomstick_throw matches 1 run clear @s poisonous_potato[custom_data={dino.boomstick:true}] 1

# boomstick cooldown
    execute if score @s dino.boomstick_throw matches 1.. run scoreboard players add @s dino.boomstick_throw 1

# reset throw score
    execute if score @s dino.boomstick_throw matches 10.. run scoreboard players reset @s dino.boomstick_throw