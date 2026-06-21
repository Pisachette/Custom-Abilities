# summon marker to place wall around
summon marker ~ ~ ~ {Tags:["jtd.earth_wall"]}
# rotate marker to players orientation
execute at @s run tp @n[type=marker,tag=jtd.earth_wall,sort=nearest,limit=1] ~ ~.5 ~ ~ ~

# place wall on marker
execute at @e[type=marker,tag=jtd.earth_wall,sort=nearest,limit=1] run setblock ^1 ^ ^1 mossy_stone_bricks destroy
execute at @e[type=marker,tag=jtd.earth_wall,sort=nearest,limit=1] run setblock ^ ^ ^1 acacia_wood destroy
execute at @e[type=marker,tag=jtd.earth_wall,sort=nearest,limit=1] run setblock ^-1 ^ ^1 acacia_wood destroy
execute at @e[type=marker,tag=jtd.earth_wall,sort=nearest,limit=1] run setblock ^1 ^1 ^1 mossy_cobblestone destroy
execute at @e[type=marker,tag=jtd.earth_wall,sort=nearest,limit=1] run setblock ^ ^1 ^1 mossy_stone_bricks destroy
execute at @e[type=marker,tag=jtd.earth_wall,sort=nearest,limit=1] run setblock ^-1 ^1 ^1 acacia_wood destroy
execute at @e[type=marker,tag=jtd.earth_wall,sort=nearest,limit=1] run setblock ^1 ^2 ^1 moss_block destroy
execute at @e[type=marker,tag=jtd.earth_wall,sort=nearest,limit=1] run setblock ^ ^2 ^1 moss_block destroy
execute at @e[type=marker,tag=jtd.earth_wall,sort=nearest,limit=1] run setblock ^-1 ^2 ^1 mossy_cobblestone destroy

# play sounds
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 .5
playsound minecraft:block.composter.ready master @a ~ ~ ~ 1 .5

# spend mana
scoreboard players remove @s jtd.manaBank 10