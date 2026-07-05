# visualize kira duration with bossbar
    execute unless score @s ed7.kira_duration matches 10.. run bossbar set minecraft:ed7.kira_duration value 10
    execute if score @s ed7.kira_duration matches 10 run bossbar set minecraft:ed7.kira_duration value 9
    execute if score @s ed7.kira_duration matches 20 run bossbar set minecraft:ed7.kira_duration value 8
    execute if score @s ed7.kira_duration matches 30 run bossbar set minecraft:ed7.kira_duration value 7
    execute if score @s ed7.kira_duration matches 40 run bossbar set minecraft:ed7.kira_duration value 6
    execute if score @s ed7.kira_duration matches 50 run bossbar set minecraft:ed7.kira_duration value 5
    execute if score @s ed7.kira_duration matches 60 run bossbar set minecraft:ed7.kira_duration value 4
    execute if score @s ed7.kira_duration matches 70 run bossbar set minecraft:ed7.kira_duration value 3
    execute if score @s ed7.kira_duration matches 80 run bossbar set minecraft:ed7.kira_duration value 2
    execute if score @s ed7.kira_duration matches 90 run bossbar set minecraft:ed7.kira_duration value 1

# play a sound when the player attacks while kira is active
    execute as @a[team=eDRAG0N7] if score @s ed7.player_attack_entity matches 1.. if score @n[type=wolf,tag=ed7.kira] ed7.kira_duration matches 1.. at @s run playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 1 2

# increment the kira duration timer constantly
    execute as @e[type=wolf,tag=ed7.kira] run scoreboard players add @s ed7.kira_duration 1

# reset the kira's duration if the player attacks again while kira is active
    execute as @a[team=eDRAG0N7] if score @s ed7.player_attack_entity matches 1.. run scoreboard players reset @n[type=wolf,tag=ed7.kira] ed7.kira_duration