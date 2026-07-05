# DEATH SAFETY
    # run score reset function when player dies
        execute as @a[team=kano5] unless score @s kano.death_check matches 1.. unless score @s kano.health matches 1.. run function kano:resets/death_resets
    # reset death check when player respawns
        execute as @a[team=kano5] if score @s kano.death_check matches 1 if score @s kano.health matches 1.. run scoreboard players reset @s kano.death_check

# MECHANICS
    # charge mechanics
        execute as @a[team=kano5] run function kano:mechanics/hellfire_charge
    # bossbar mechanics
        execute as @a[team=kano5] run function kano:mechanics/bossbar

# FX
    # beam preview fx
        execute as @a[team=kano5] at @s run function kano:hellfire_fx/fx_beam_preview

# ABILITY EXECUTION
    # detect when the player has hellfire in their offhand, and execute the "offhand_hellfire" function if criteria is met
        execute as @a[team=kano5] if items entity @s weapon.offhand poisonous_potato[custom_data={kano_hellfire:true}] run function kano:playerstate_detection/hellfire_offhand

# SCORE RESETS
    function kano:resets/score_resets