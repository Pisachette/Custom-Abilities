# PLAYER

    # add score to player if the passive effect is active
        execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{jtdSoul:true}] at @s if entity @e[type=!item,type=!marker,team=!JacobTheDragon,tag=!jtd.soul_fx,tag=!jtd.soul_trap,distance=..5] run scoreboard players add @s jtd.soul_passive 1

    # teleport the marker to the player constantly
        execute as @a[team=JacobTheDragon] at @s run tp @e[type=marker,tag=jtd.soul_fx] ~ ~ ~
    # rotate the marker
        execute as @e[type=marker,tag=jtd.soul_fx] at @s run tp @s ~ ~ ~ ~1152 ~
    # summon marker on the player for fx
        execute as @a[team=JacobTheDragon] if score @s jtd.soul_passive matches 1 at @s run summon marker ~ ~ ~ {Tags:["jtd.soul_fx"]}

    # remove the score of the passive is not active
        execute as @a[team=JacobTheDragon] if score @s jtd.soul_passive matches 1.. at @s unless entity @e[team=!JacobTheDragon,tag=!jtd.soul_fx,distance=..5] run scoreboard players reset @s jtd.soul_passive
        execute as @a[team=JacobTheDragon] if score @s jtd.soul_passive matches 1.. unless items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{jtdSoul:true}] run scoreboard players reset @s jtd.soul_passive

    # kill the marker if the passive is not active
        execute as @a[team=JacobTheDragon] if entity @e[type=marker,tag=jtd.soul_fx] unless score @s jtd.soul_passive matches 1.. run kill @e[type=marker,tag=jtd.soul_fx]

    # particles for the marker
        execute at @e[type=marker,tag=jtd.soul_fx] run particle trial_spawner_detection_ominous ^ ^.2 ^5 0 0 0 0 1
        execute at @e[type=marker,tag=jtd.soul_fx] run particle trial_spawner_detection_ominous ^ ^.2 ^-5 0 0 0 0 1
        execute at @e[type=marker,tag=jtd.soul_fx] run particle trial_spawner_detection_ominous ^5 ^.2 ^ 0 0 0 0 1
        execute at @e[type=marker,tag=jtd.soul_fx] run particle trial_spawner_detection_ominous ^-5 ^.2 ^ 0 0 0 0 1

# TRAP

    execute at @e[type=interaction,tag=jtd.soul_trap_interaction] if entity @e[type=vindicator,tag=jtd.soulswarm,distance=..10] run effect give @e[type=vindicator,tag=jtd.soulswarm,distance=..10] strength 1 0 true
    execute at @e[type=interaction,tag=jtd.soul_trap_interaction] if entity @e[type=vindicator,tag=jtd.soulswarm,distance=..10] run execute at @e[type=vindicator,tag=jtd.soulswarm,distance=..10] run particle witch ~ ~1 ~ 0 0 0 0 1