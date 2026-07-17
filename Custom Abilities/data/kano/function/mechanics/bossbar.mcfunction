# make the bossbar reflect the current hellfire charge
    execute store result bossbar kano.hellfire value run scoreboard players get @s kano.charge_hellfire
# toggle bossbar visibility (charge dependent)
    execute if score @s kano.charge_hellfire matches 1.. run bossbar set kano.hellfire visible true
    execute unless score @s kano.charge_hellfire matches 1.. run bossbar set kano.hellfire visible false