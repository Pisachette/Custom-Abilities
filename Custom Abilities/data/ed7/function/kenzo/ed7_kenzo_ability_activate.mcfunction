effect give @s instant_health 1 0 true
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 1 if entity @e[type=wolf,tag=ed7.kenzo,distance=..10] at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 .5
playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 1 2
execute unless score @s ed7.sneak matches 1.. at @s run particle minecraft:heart ~ ~2.2 ~ 0 0 0 0 1
execute if score @s ed7.sneak matches 1.. at @s run particle minecraft:heart ~ ~1.8 ~ 0 0 0 0 1