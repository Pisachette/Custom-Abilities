# remove flightspeed attribute
    function ntd:abilities/ntd_ability_flightspeed_remove

# remove takeoff charge
    scoreboard players reset @s ntd.takeoff_charge

# remove dragonhead if applicable
    execute if score @s ntd.dragonhead_active matches 1.. run function ntd:abilities/ntd_ability_dragonhead_remove

# remove actionbar
    title @s actionbar ""

# reset rclick score
    scoreboard players reset @s ntd.rclick_dragonheart

# set death check to 1 to prevent function looping
    scoreboard players set @s ntd.death_check 1