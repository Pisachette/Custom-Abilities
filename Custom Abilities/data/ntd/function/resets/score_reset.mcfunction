# reset sfx check when player rclicks
    execute if score @s ntd.sfx_check matches 1.. if score @s ntd.rclick_dragonheart matches 1.. unless score @s ntd.dragonbreath_fuel matches ..2 run scoreboard players reset @s ntd.sfx_check
# flightspeed bool
    execute unless score @s ntd.sneak matches 1.. if score @s ntd.flightspeed_applied matches 1 run scoreboard players reset @s ntd.flightspeed_applied
# fly bool
    execute if score @s ntd.fly matches 1.. run scoreboard players reset @s ntd.fly
# reset takeoff charge if player stops sneaking
    execute unless score @s ntd.sneak matches 1.. if score @s ntd.takeoff_charge matches 1.. run scoreboard players reset @s ntd.takeoff_charge
# sneak bool
    execute if score @s ntd.sneak matches 1.. run scoreboard players reset @s ntd.sneak
# jump bool
    execute if score @s ntd.jump matches 1.. run scoreboard players reset @s ntd.jump
# rclick bool
    execute if score @s ntd.rclick_dragonheart matches 1.. run scoreboard players reset @s ntd.rclick_dragonheart