# INADEQUATE CHARGE
    execute unless score @s kano.charge_hellfire matches 10.. run say inadequate charge
    execute unless score @s kano.charge_hellfire matches 10.. at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 .5

# ADEQUATE CHARGE
    execute if score @s kano.charge_hellfire matches 10.. run say adequate charge
    execute if score @s kano.charge_hellfire matches 10.. at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2