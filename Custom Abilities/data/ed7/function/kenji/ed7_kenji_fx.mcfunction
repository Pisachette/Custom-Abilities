# play charge sounds
    execute as @a[team=eDRAG0N7] if score @s ed7.kenji_charge matches 1 at @s run playsound minecraft:entity.skeleton.ambient master @a ~ ~ ~ 1 .5
    execute as @a[team=eDRAG0N7] if score @s ed7.kenji_charge matches 6 at @s run playsound minecraft:entity.skeleton.ambient master @a ~ ~ ~ 1 .5

# particles for wolf and player
    execute as @a[team=eDRAG0N7] if score @s ed7.kenji_toggle matches 2 at @s run particle minecraft:wax_on ~ ~.1 ~ .1 0 .1 0 1
    execute as @e[type=wolf,tag=ed7.kenji] at @s run particle minecraft:wax_on ~ ~.1 ~ .1 0 .1 0 1

# remove player hunger while kenji is active
    execute as @a[team=eDRAG0N7] if score @s ed7.kenji_toggle matches 1 run effect give @s hunger 1 1 true