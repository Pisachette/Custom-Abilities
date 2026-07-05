# add charge to the timer unless it's equated to 9.5s
    execute if score @s kano.rclick_hellfire matches 1.. unless score @s kano.charge_hellfire matches 190.. run scoreboard players add @s kano.charge_hellfire 1

# cap charge score based on player's health
    execute if score @s kano.health matches 1 if score @s kano.charge_hellfire matches 1.. run scoreboard players set @s kano.charge_hellfire 0
    execute if score @s kano.health matches 2 if score @s kano.charge_hellfire matches 10.. run scoreboard players set @s kano.charge_hellfire 10
    execute if score @s kano.health matches 3 if score @s kano.charge_hellfire matches 20.. run scoreboard players set @s kano.charge_hellfire 20
    execute if score @s kano.health matches 4 if score @s kano.charge_hellfire matches 30.. run scoreboard players set @s kano.charge_hellfire 30
    execute if score @s kano.health matches 5 if score @s kano.charge_hellfire matches 40.. run scoreboard players set @s kano.charge_hellfire 40
    execute if score @s kano.health matches 6 if score @s kano.charge_hellfire matches 50.. run scoreboard players set @s kano.charge_hellfire 50
    execute if score @s kano.health matches 7 if score @s kano.charge_hellfire matches 60.. run scoreboard players set @s kano.charge_hellfire 60
    execute if score @s kano.health matches 8 if score @s kano.charge_hellfire matches 70.. run scoreboard players set @s kano.charge_hellfire 70
    execute if score @s kano.health matches 9 if score @s kano.charge_hellfire matches 80.. run scoreboard players set @s kano.charge_hellfire 80
    execute if score @s kano.health matches 10 if score @s kano.charge_hellfire matches 90.. run scoreboard players set @s kano.charge_hellfire 90
    execute if score @s kano.health matches 11 if score @s kano.charge_hellfire matches 100.. run scoreboard players set @s kano.charge_hellfire 100
    execute if score @s kano.health matches 12 if score @s kano.charge_hellfire matches 110.. run scoreboard players set @s kano.charge_hellfire 110
    execute if score @s kano.health matches 13 if score @s kano.charge_hellfire matches 120.. run scoreboard players set @s kano.charge_hellfire 120
    execute if score @s kano.health matches 14 if score @s kano.charge_hellfire matches 130.. run scoreboard players set @s kano.charge_hellfire 130
    execute if score @s kano.health matches 15 if score @s kano.charge_hellfire matches 140.. run scoreboard players set @s kano.charge_hellfire 140
    execute if score @s kano.health matches 16 if score @s kano.charge_hellfire matches 150.. run scoreboard players set @s kano.charge_hellfire 150
    execute if score @s kano.health matches 17 if score @s kano.charge_hellfire matches 160.. run scoreboard players set @s kano.charge_hellfire 160
    execute if score @s kano.health matches 18 if score @s kano.charge_hellfire matches 170.. run scoreboard players set @s kano.charge_hellfire 170
    execute if score @s kano.health matches 19 if score @s kano.charge_hellfire matches 180.. run scoreboard players set @s kano.charge_hellfire 180
    execute if score @s kano.health matches 20 if score @s kano.charge_hellfire matches 190.. run scoreboard players set @s kano.charge_hellfire 190

# reset charge if the player stops holding right-click
    execute unless score @s kano.rclick_hellfire matches 1.. if score @s kano.charge_hellfire matches 1.. run scoreboard players reset @s kano.charge_hellfire