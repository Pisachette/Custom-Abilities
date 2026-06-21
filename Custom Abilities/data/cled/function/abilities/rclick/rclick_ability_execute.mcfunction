# call ability charge function when right clicking with respective ball
    execute if score @s cled.rclick_cledball matches 1 unless score @s cled.charge_cledball matches 20.. if score @s cled.health matches 1.. run scoreboard players add @s cled.charge_cledball 1
    
    execute if score @s cled.rclick_killball matches 1 unless score @s cled.charge_killball matches 61.. if score @s cled.health matches 1.. if entity @e[type=#zombies,team=Cledward] run scoreboard players add @s cled.charge_killball 1

# CLEDBALL

    # summon cledball when charged
        execute if score @s cled.rclick_cledball matches 1 if score @s cled.charge_cledball matches 20 run function cled:abilities/rclick/cledball/rclick_ability_cledball_shoot

    # charge sounds
        execute if score @s cled.charge_cledball matches 1 run playsound entity.breeze.charge master @a ~ ~ ~ 1 .5

        execute if score @s cled.charge_cledball matches 1.. unless score @s cled.rclick_cledball matches 1.. run stopsound @a master block.candle.extinguish
        execute if score @s cled.charge_cledball matches 1.. unless score @s cled.rclick_cledball matches 1.. run stopsound @a master entity.breeze.charge
        execute if score @s cled.charge_cledball matches 1.. unless score @s cled.rclick_cledball matches 1.. run playsound block.candle.extinguish master @a ~ ~ ~ 1 2

# KILLBALL

    # call ability function when killball is charged
        execute if score @s cled.charge_killball matches 60 if entity @e[type=#zombies,team=Cledward] run function cled:abilities/rclick/killball/rclick_ability_killball_purify

    # charge sounds
        execute if score @s cled.charge_killball matches 1.. unless score @s cled.rclick_killball matches 1.. run stopsound @a master block.respawn_anchor.deplete
        execute if score @s cled.charge_killball matches 1 if entity @e[type=#zombies,team=Cledward] run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 .5
        execute if score @s cled.charge_killball matches 1 if entity @e[type=#zombies,team=Cledward] run playsound entity.warden.sonic_charge master @a ~ ~ ~ 1 .5
        
        execute if score @s cled.charge_killball matches 1.. unless score @s cled.rclick_killball matches 1.. run stopsound @a master block.respawn_anchor.charge
        execute if score @s cled.charge_killball matches 1.. unless score @s cled.rclick_killball matches 1.. run stopsound @a master entity.warden.sonic_charge
        execute if score @s cled.charge_killball matches 1..59 unless score @s cled.rclick_killball matches 1.. if entity @e[type=#zombies,team=Cledward] run playsound block.respawn_anchor.deplete master @a ~ ~ ~ 1 2

# cledball/killball resets
    function cled:abilities/rclick/rclick_ability_resets