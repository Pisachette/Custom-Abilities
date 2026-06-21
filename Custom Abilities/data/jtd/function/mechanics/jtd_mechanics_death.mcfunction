# reset mana functions
    scoreboard players set @s jtd.manaBank 60
    scoreboard players reset @s jtd.manaRegen

# reset air abilities
    function jtd:abilities/air/jtd_ability_air_speed_remove
    scoreboard players reset @s jtd.ability_air_ability2
    scoreboard players reset @s jtd.ability_air_ability2_marker_timer
    scoreboard players reset @s jtd.ability_air_windborneJump
    scoreboard players reset @s jtd.ability_air_windborneManaDrainLoop
    scoreboard players reset @s jtd.ability_air_windborneSprint
    scoreboard players reset @s jtd.ability_air_windborneSprintDecay
    scoreboard players reset @s jtd.ability_air_windborneSprintDuration
    scoreboard players reset @s jtd.ability_air_windborneToggle

# reset earth abilities
    function jtd:abilities/earth/jtd_ability_earth_ability_2_remove
    scoreboard players reset @s jtd.ability_earth_1_wallTimer
    scoreboard players reset @s jtd.ability_earth_2
    scoreboard players reset @s jtd.ability_earth_2_manaDrain
    scoreboard players reset @s jtd.ability_earth_2_scoreReset

# reset ender abilities
    scoreboard players reset @s jtd.ability_ender_chestToggle
    scoreboard players reset @s jtd.ability_ender_scaffoldingCheck

# reset fire abilities
    scoreboard players reset @s jtd.ability_fire_fireballTimer
    scoreboard players reset @s jtd.ability_fire_fireball_hazard_duration

# reset soul abilities
    scoreboard players reset @s jtd.soul_passive

# reset water abilities
    scoreboard players reset @s jtd.ability_water_charge
    scoreboard players reset @s jtd.ability_water_manaRegen
    scoreboard players reset @s jtd.ability_water_manaRegenDuration

# set death check to prevent function looping
    scoreboard players set @s jtd.death_check 1