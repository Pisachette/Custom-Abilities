execute as @e[distance=..5,team=!JacobTheDragon,tag=!jtd.earth_wall] run damage @s 5 magic by @n[team=JacobTheDragon,type=player]
effect give @e[distance=..5,team=!JacobTheDragon,tag=!jtd.earth_wall] poison 5 1 true

setblock ^1 ^ ^1 air replace
setblock ^ ^ ^1 air replace
setblock ^-1 ^ ^1 air replace
setblock ^1 ^1 ^1 air replace
setblock ^ ^1 ^1 air replace
setblock ^-1 ^1 ^1 air replace
setblock ^1 ^2 ^1 air replace
setblock ^ ^2 ^1 air replace
setblock ^-1 ^2 ^1 air replace

playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 .5
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 2
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 .5

particle minecraft:effect{color:0x00FF00} ~ ~ ~ 3 3 3 0 100

kill @s
