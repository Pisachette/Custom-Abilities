# damage enemies who touch the wall
    execute at @e[type=marker,tag=jtd.earth_wall] run execute as @e[team=!JacobTheDragon,tag=!jtd.earth_wall,distance=..3] run damage @s 1 magic by @n[team=JacobTheDragon,type=player]
    execute at @e[type=marker,tag=jtd.earth_wall] run effect give @e[team=!JacobTheDragon,tag=!jtd.earth_wall,distance=..3] poison 1 0 true

# add lifetime to wall
    scoreboard players add @e[tag=jtd.earth_wall,type=marker] jtd.ability_earth_1_wallTimer 1

# remove wall if hit by fire ability 1
    execute as @e[type=marker,tag=jtd.earth_wall] at @s if entity @e[type=area_effect_cloud,tag=jtd.fire,distance=..3] run scoreboard players set @s jtd.ability_earth_1_wallTimer 200

# remove wall after 10s
    execute as @e[tag=jtd.earth_wall,type=marker] if score @s jtd.ability_earth_1_wallTimer matches 200.. at @s run function jtd:abilities/earth/jtd_ability_earth_ability_1_remove