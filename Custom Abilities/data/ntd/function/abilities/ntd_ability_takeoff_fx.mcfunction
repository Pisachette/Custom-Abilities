# charge sounds
    execute if score @s ntd.takeoff_charge matches 10 run playsound entity.bat.takeoff master @a ~ ~ ~ .5 .5
    execute if score @s ntd.takeoff_charge matches 20 run playsound entity.bat.takeoff master @a ~ ~ ~ .5 .6
    execute if score @s ntd.takeoff_charge matches 30 run playsound entity.bat.takeoff master @a ~ ~ ~ .5 .7
    execute if score @s ntd.takeoff_charge matches 40 run playsound entity.bat.takeoff master @a ~ ~ ~ .5 .8
    execute if score @s ntd.takeoff_charge matches 50 run playsound entity.bat.takeoff master @a ~ ~ ~ .5 .9
    execute if score @s ntd.takeoff_charge matches 60 run playsound entity.bat.takeoff master @a ~ ~ ~ .5 1
    execute if score @s ntd.takeoff_charge matches 70 run playsound entity.bat.takeoff master @a ~ ~ ~ .5 1.1
    execute if score @s ntd.takeoff_charge matches 80 run playsound entity.bat.takeoff master @a ~ ~ ~ .5 1.2
    execute if score @s ntd.takeoff_charge matches 90 run playsound entity.bat.takeoff master @a ~ ~ ~ .5 1.3
    execute if score @s ntd.takeoff_charge matches 100 run playsound entity.bat.takeoff master @a ~ ~ ~ .5 1.8
    execute if score @s ntd.takeoff_charge matches 100 run playsound block.amethyst_block.resonate master @a ~ ~ ~ 1 2

# actionbar
    execute unless score @s ntd.sneak matches 1.. run title @s actionbar ""
    execute unless score @s ntd.dragonhead_active matches 1.. if score @s ntd.sneak matches 1.. unless score @s ntd.takeoff_charge matches 10.. run title @s actionbar [{"color":"white","text":"["},{"color":"gray","text":"||||||||||"},{"color":"white","text":"]"}]
    execute if score @s ntd.takeoff_charge matches 10 run title @s actionbar [{"color":"white","text":"["},{"color":"dark_purple","text":"|"},{"color":"gray","text":"|||||||||"},{"color":"white","text":"]"}]
    execute if score @s ntd.takeoff_charge matches 20 run title @s actionbar [{"color":"white","text":"["},{"color":"dark_purple","text":"||"},{"color":"gray","text":"||||||||"},{"color":"white","text":"]"}]
    execute if score @s ntd.takeoff_charge matches 30 run title @s actionbar [{"color":"white","text":"["},{"color":"dark_purple","text":"|||"},{"color":"gray","text":"|||||||"},{"color":"white","text":"]"}]
    execute if score @s ntd.takeoff_charge matches 40 run title @s actionbar [{"color":"white","text":"["},{"color":"dark_purple","text":"||||"},{"color":"gray","text":"||||||"},{"color":"white","text":"]"}]
    execute if score @s ntd.takeoff_charge matches 50 run title @s actionbar [{"color":"white","text":"["},{"color":"dark_purple","text":"|||||"},{"color":"gray","text":"|||||"},{"color":"white","text":"]"}]
    execute if score @s ntd.takeoff_charge matches 60 run title @s actionbar [{"color":"white","text":"["},{"color":"dark_purple","text":"||||||"},{"color":"gray","text":"||||"},{"color":"white","text":"]"}]
    execute if score @s ntd.takeoff_charge matches 70 run title @s actionbar [{"color":"white","text":"["},{"color":"dark_purple","text":"|||||||"},{"color":"gray","text":"|||"},{"color":"white","text":"]"}]
    execute if score @s ntd.takeoff_charge matches 80 run title @s actionbar [{"color":"white","text":"["},{"color":"dark_purple","text":"||||||||"},{"color":"gray","text":"||"},{"color":"white","text":"]"}]
    execute if score @s ntd.takeoff_charge matches 90 run title @s actionbar [{"color":"white","text":"["},{"color":"dark_purple","text":"|||||||||"},{"color":"gray","text":"|"},{"color":"white","text":"]"}]
    execute if score @s ntd.takeoff_charge matches 100 run title @s actionbar [{"bold":true,"color":"white","text":"["},{"color":"dark_purple","text":"||||||||||"},{"color":"white","text":"]"}]