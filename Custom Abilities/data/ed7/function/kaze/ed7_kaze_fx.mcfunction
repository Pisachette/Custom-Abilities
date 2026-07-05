# ACTIONBAR
    # visualize the sprint meter in the action bar
        execute if score @s ed7.kaze_sprint_meter matches 1..5 run title @s actionbar [{"bold":true,"color":"white","text":"["},{"bold":false,"color":"gray","text":"||||||||||"},{"bold":true,"color":"white","text":"]"}]
        execute if score @s ed7.kaze_sprint_meter matches 6..11 run title @s actionbar [{"bold":true,"color":"white","text":"["},{"bold":false,"color":"dark_aqua","text":"|"},{"bold":false,"color":"gray","text":"|||||||||"},{"bold":true,"color":"white","text":"]"}]
        execute if score @s ed7.kaze_sprint_meter matches 12..17 run title @s actionbar [{"bold":true,"color":"white","text":"["},{"bold":false,"color":"dark_aqua","text":"||"},{"bold":false,"color":"gray","text":"||||||||"},{"bold":true,"color":"white","text":"]"}]
        execute if score @s ed7.kaze_sprint_meter matches 18..23 run title @s actionbar [{"bold":true,"color":"white","text":"["},{"bold":false,"color":"dark_aqua","text":"|||"},{"bold":false,"color":"gray","text":"|||||||"},{"bold":true,"color":"white","text":"]"}]
        execute if score @s ed7.kaze_sprint_meter matches 24..29 run title @s actionbar [{"bold":true,"color":"white","text":"["},{"bold":false,"color":"dark_aqua","text":"||||"},{"bold":false,"color":"gray","text":"||||||"},{"bold":true,"color":"white","text":"]"}]
        execute if score @s ed7.kaze_sprint_meter matches 30..35 run title @s actionbar [{"bold":true,"color":"white","text":"["},{"bold":false,"color":"dark_aqua","text":"|||||"},{"bold":false,"color":"gray","text":"|||||"},{"bold":true,"color":"white","text":"]"}]
        execute if score @s ed7.kaze_sprint_meter matches 36..41 run title @s actionbar [{"bold":true,"color":"white","text":"["},{"bold":false,"color":"dark_aqua","text":"||||||"},{"bold":false,"color":"gray","text":"||||"},{"bold":true,"color":"white","text":"]"}]
        execute if score @s ed7.kaze_sprint_meter matches 42..47 run title @s actionbar [{"bold":true,"color":"white","text":"["},{"bold":false,"color":"dark_aqua","text":"|||||||"},{"bold":false,"color":"gray","text":"|||"},{"bold":true,"color":"white","text":"]"}]
        execute if score @s ed7.kaze_sprint_meter matches 48..53 run title @s actionbar [{"bold":true,"color":"white","text":"["},{"bold":false,"color":"dark_aqua","text":"||||||||"},{"bold":false,"color":"gray","text":"||"},{"bold":true,"color":"white","text":"]"}]
        execute if score @s ed7.kaze_sprint_meter matches 54..59 run title @s actionbar [{"bold":true,"color":"white","text":"["},{"bold":false,"color":"dark_aqua","text":"|||||||||"},{"bold":false,"color":"gray","text":"|"},{"bold":true,"color":"white","text":"]"}]
        execute if score @s ed7.kaze_sprint_meter matches 60.. run title @s actionbar [{"bold":true,"color":"white","text":"["},{"bold":true,"color":"dark_aqua","text":"||||||||||"},{"bold":true,"color":"white","text":"]"}]
    # remove actionbar display when sprint meter is 0
        execute if score @s ed7.kaze_sprint_meter matches 1 unless score @s ed7.player_sprint matches 1.. run title @s actionbar ""

# PARTICLES
    # player
        # pre-active
            execute if score @s ed7.kaze_sprint_meter matches 1..59 if score @s ed7.player_sprint matches 1.. run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0 1
        # active
            execute if score @s ed7.kaze_sprint_meter matches 60.. run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0 .5 0 0 3
    # kaze
        execute at @e[type=wolf,tag=ed7.kaze] run particle minecraft:enchanted_hit ~ ~.5 ~ 0 0 0 0 1

# SOUNDS
    # player charge sounds
        # pre-active
            execute if score @s ed7.kaze_sprint_meter matches 1..59 unless score @s ed7.player_sprint matches 0 run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ .5 .5
        # active
            execute if score @s ed7.kaze_sprint_meter matches 60.. run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 2
    # actionbar sounds
        execute if score @s ed7.kaze_sprint_meter matches 6 run playsound entity.bat.takeoff master @a ~ ~ ~ .3 .5
        execute if score @s ed7.kaze_sprint_meter matches 12 run playsound entity.bat.takeoff master @a ~ ~ ~ .3 .6
        execute if score @s ed7.kaze_sprint_meter matches 18 run playsound entity.bat.takeoff master @a ~ ~ ~ .3 .7
        execute if score @s ed7.kaze_sprint_meter matches 24 run playsound entity.bat.takeoff master @a ~ ~ ~ .3 .8
        execute if score @s ed7.kaze_sprint_meter matches 30 run playsound entity.bat.takeoff master @a ~ ~ ~ .3 .9
        execute if score @s ed7.kaze_sprint_meter matches 36 run playsound entity.bat.takeoff master @a ~ ~ ~ .3 1
        execute if score @s ed7.kaze_sprint_meter matches 42 run playsound entity.bat.takeoff master @a ~ ~ ~ .3 1.1
        execute if score @s ed7.kaze_sprint_meter matches 48 run playsound entity.bat.takeoff master @a ~ ~ ~ .3 1.2
        execute if score @s ed7.kaze_sprint_meter matches 54 run playsound entity.bat.takeoff master @a ~ ~ ~ .3 1.3
        execute if score @s ed7.kaze_sprint_meter matches 60 run playsound entity.bat.takeoff master @a ~ ~ ~ .3 1.4