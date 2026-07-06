# charge meter when player holds right-click
    execute if score @s kano.msun_rclick matches 1.. unless score @s kano.msun_charge_meter matches 61 run scoreboard players add @s kano.msun_charge_meter 1
# run charged function at 60 charge
    execute if score @s kano.msun_charge_meter matches 60 run function kano:msun_mechanics/msun_charged