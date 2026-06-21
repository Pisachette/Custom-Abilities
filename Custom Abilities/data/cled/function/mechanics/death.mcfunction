# play deactivation sounds
    execute if score @s cled.charge_cledball matches 1.. unless score @s cled.rclick_cledball matches 1.. run stopsound @a master block.candle.extinguish
    execute if score @s cled.charge_cledball matches 1.. unless score @s cled.rclick_cledball matches 1.. run stopsound @a master entity.breeze.charge
    execute if score @s cled.charge_cledball matches 1.. unless score @s cled.rclick_cledball matches 1.. run playsound block.candle.extinguish master @a ~ ~ ~ 1 2

    execute if score @s cled.charge_killball matches 1.. unless score @s cled.rclick_killball matches 1.. run stopsound @a master block.respawn_anchor.charge
    execute if score @s cled.charge_killball matches 1.. unless score @s cled.rclick_killball matches 1.. run stopsound @a master entity.warden.sonic_charge
    execute if score @s cled.charge_killball matches 1..59 unless score @s cled.rclick_killball matches 1.. if entity @e[type=#zombies,team=Cledward] run playsound block.respawn_anchor.deplete master @a ~ ~ ~ 1 2

# reset charge scores of player
    scoreboard players reset @s cled.charge_cledball
    scoreboard players reset @s cled.charge_killball

# set death check to 1 to prevent looping
    scoreboard players set @s cled.death_check 1
