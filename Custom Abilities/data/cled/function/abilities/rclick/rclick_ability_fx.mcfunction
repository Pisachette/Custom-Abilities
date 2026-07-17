# CLEDBALL

        # add lifetime to cledball projectiles
            execute as @e[type=item_display,tag=cled.cledball_projectile] run scoreboard players add @s cled.cledball_lifetime 1

        # cledball particles
            execute at @e[type=item_display,tag=cled.cledball_projectile] run particle minecraft:composter ~ ~ ~ 0 0 0 0 1
            execute at @e[type=item_display,tag=cled.cledball_projectile] run particle minecraft:spore_blossom_air ~ ~ ~ 0 0 0 0 1

        # destroy cledball after 10s
            execute as @e[type=item_display,tag=cled.cledball_projectile] if score @s cled.cledball_lifetime matches 200.. at @s run function cled:abilities/rclick/cledball/rclick_ability_cledball_hit

    # mobility
        # cledball movement
            execute as @e[type=item_display,tag=cled.cledball_projectile] at @s run tp @s ^ ^ ^.5

        # cledball travel sound
            execute at @e[type=item_display,tag=cled.cledball_projectile] run playsound minecraft:block.honey_block.break master @a ~ ~ ~ .5 2

        # cledball track entities
            # non-zombies
                execute as @e[type=item_display,tag=cled.cledball_projectile,scores={cled.cledball_lifetime=20..}] at @s if entity @e[type=!#cled:cledball_passthrough_entities,distance=..5,team=!Cledward,type=!#zombies] run tp @s ~ ~ ~ facing entity @n[type=!#cled:cledball_passthrough_entities,distance=..5,team=!Cledward,type=!#zombies] eyes
            # zombies
                execute as @e[type=item_display,tag=cled.cledball_projectile,scores={cled.cledball_lifetime=20..}] at @s if entity @e[type=#zombies,distance=..7,team=!Cledward] run tp @s ~ ~ ~ facing entity @n[type=#zombies,distance=..7,team=!Cledward] eyes

    # on-hit fx
        # call cledball hit function when cledball hits a block
            execute as @e[type=item_display,tag=cled.cledball_projectile] at @s unless block ~ ~ ~ #cled:cledball_passthrough_blocks run function cled:abilities/rclick/cledball/rclick_ability_cledball_hit

        # call cledball hit function when cledball hits a non-zombie entity
            execute as @e[type=item_display,tag=cled.cledball_projectile] at @s if entity @e[type=!#cled:cledball_passthrough_entities,type=!#zombies,distance=..2.5,team=!Cledward] run function cled:abilities/rclick/cledball/rclick_ability_cledball_hit

        # call conversion function when cledball hits zombie
            execute as @e[type=item_display,tag=cled.cledball_projectile] at @s if entity @e[type=#zombies,distance=..2,team=!Cledward] run function cled:abilities/rclick/cledball/rclick_ability_cledball_convert

# KILLBALL

    # damage entities in the poison cloud
        execute at @e[type=area_effect_cloud,tag=cled.poison_cloud] run execute as @e[distance=..5,team=!Cledward] run damage @s 2 magic by @n[team=Cledward,type=player,limit=1]

    # make zombies immune to fire
        execute as @e[type=#zombies,team=Cledward] run data merge entity @s {Fire:0s}