# reset cledball/killball charge if player stops holding right click
    execute unless score @s cled.rclick_cledball matches 1.. if score @s cled.charge_cledball matches 1.. run scoreboard players reset @s cled.charge_cledball
    execute unless score @s cled.rclick_killball matches 1.. if score @s cled.charge_killball matches 1.. run scoreboard players reset @s cled.charge_killball

# make right click boolean
    execute if score @s cled.rclick_cledball matches 1.. run scoreboard players reset @s cled.rclick_cledball
    execute if score @s cled.rclick_killball matches 1.. run scoreboard players reset @s cled.rclick_killball