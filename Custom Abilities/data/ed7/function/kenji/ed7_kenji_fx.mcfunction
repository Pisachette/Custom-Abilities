# play charge sounds
    execute if score @s ed7.kenji_charge matches 1 run playsound minecraft:entity.skeleton.ambient master @a ~ ~ ~ 1 .5
    execute if score @s ed7.kenji_charge matches 6 run playsound minecraft:entity.skeleton.ambient master @a ~ ~ ~ 1 .5

# particles for wolf and player
    execute if score @s ed7.kenji_toggle matches 2 run particle minecraft:wax_on ~ ~.1 ~ .1 0 .1 0 1
    execute as @e[type=wolf,tag=ed7.kenji] at @s run particle minecraft:wax_on ~ ~.1 ~ .1 0 .1 0 1

# remove player hunger while kenji is active
    execute if score @s ed7.kenji_toggle matches 2 run effect give @s hunger 1 1 true