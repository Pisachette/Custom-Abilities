# DEATH RESET
    # run death reset function
        execute as @a[team=kano5] if score @s kano.player_health matches 0 unless score @s kano.death_check matches 1.. run function kano:resets/death_reset
    # reset death check after player respawns
        execute as @a[team=kano5] if score @s kano.death_check matches 1.. if score @s kano.player_health matches 1.. run scoreboard players reset @s kano.death_check

# CHARGE MECHANICS
    execute as @a[team=kano5] run function kano:msun_mechanics/msun_charge_mechanics

# CHARGE FX
    execute as @a[team=kano5] at @s run function kano:msun_mechanics/msun_charge_fx

# ACTIVATE ABILITY
    # offload sun strike
        execute as @a[team=kano5] if score @s kano.attack_entity matches 1.. if score @s kano.msun_charge_meter matches 61 at @s run function kano:abilities/ability_sunstrike_offload
    # run godray ability function when player presses "swap hands"
        execute as @a[team=kano5] if items entity @s weapon.offhand poisonous_potato[custom_data={kano.mighty_sun:true}] run function kano:abilities/ability_godray
    # loop godray function when beam is activated
        execute as @a[team=kano5] if score @s kano.msun_godray_loop matches 1.. at @s run function kano:abilities/ability_godray_beam_loop

# DASH MECHANICS
    # if holding THE MIGHTY SUN, run dash function
        execute as @a[team=kano5] if items entity @s weapon.mainhand poisonous_potato[custom_data={kano.mighty_sun:true}] run function kano:abilities/ability_dash
    # remove jump attribute when not sneaking
        execute as @a[team=kano5] unless score @s kano.player_sneak matches 1.. if score @s kano.dash_ready matches 1.. run attribute @s jump_strength modifier remove kano.jump
    # reset dash_ready playerstate when not sneaking
        execute as @a[team=kano5] unless score @s kano.player_sneak matches 1.. if score @s kano.dash_ready matches 1.. run scoreboard players reset @s kano.dash_ready

# RISK/REWARD MECHANICS
    # slowly kill player at full charge
        execute as @a[team=kano5] if score @s kano.msun_charge_meter matches 61 run effect give @s wither 1 1 true
    # grant health on kill
        execute as @a[team=kano5] if score @s kano.player_kill_mob matches 1.. run effect give @s minecraft:regeneration 3 3 true
        execute as @a[team=kano5] if score @s kano.player_kill_player matches 1.. run effect give @s minecraft:regeneration 3 3 true

# SCORE RESETS
    execute as @a[team=kano5] run function kano:resets/score_reset