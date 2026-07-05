# set initialization score to 1 to prevent re-initialization
    scoreboard players set ca.init jtd.initialize 1

team add JacobTheDragon
team modify JacobTheDragon color green

scoreboard objectives add jtd.manaBank dummy
scoreboard objectives add jtd.manaRegen dummy
scoreboard objectives add jtd.health health
scoreboard objectives add jtd.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add jtd.item_spamProtection dummy
scoreboard objectives add jtd.subtitle_check dummy
scoreboard objectives add jtd.death_check dummy

scoreboard objectives add jtd.earth_rClick dummy
scoreboard objectives add jtd.ability_earth_1_wallTimer dummy
scoreboard objectives add jtd.ability_earth_2 dummy
scoreboard objectives add jtd.ability_earth_2_manaDrain dummy
scoreboard objectives add jtd.ability_earth_2_scoreReset dummy

scoreboard objectives add jtd.water_rClick dummy
scoreboard objectives add jtd.ability_water_charge dummy
scoreboard objectives add jtd.ability_water_manaRegen dummy
scoreboard objectives add jtd.ability_water_manaRegenDuration dummy

scoreboard objectives add jtd.air_rClick dummy
scoreboard objectives add jtd.ability_air_windborneToggle dummy
scoreboard objectives add jtd.ability_air_windborneSprint minecraft.custom:sprint_one_cm
scoreboard objectives add jtd.ability_air_windborneSprintDecay dummy
scoreboard objectives add jtd.ability_air_windborneSprintDuration dummy
scoreboard objectives add jtd.ability_air_windborneManaDrainLoop dummy
scoreboard objectives add jtd.ability_air_windborneJump minecraft.custom:minecraft.jump
scoreboard objectives add jtd.ability_air_windborneReset dummy
scoreboard objectives add jtd.ability_air_ability2 dummy
scoreboard objectives add jtd.ability_air_ability2_marker_timer dummy

scoreboard objectives add jtd.fire_rClick dummy
scoreboard objectives add jtd.ability_fire_fireballTimer dummy
scoreboard objectives add jtd.ability_fire_fireball_hazard_duration dummy

scoreboard objectives add jtd.soul_rClick dummy
scoreboard objectives add jtd.soul_passive dummy
scoreboard objectives add jtd.soul_trap_attack dummy
scoreboard objectives add jtd.soul_trap_trapped dummy
scoreboard objectives add jtd.soul_trap_lifetime dummy

scoreboard objectives add jtd.ender_rClick dummy
scoreboard objectives add jtd.ability_ender_scaffoldingCheck dummy
scoreboard objectives add jtd.ability_ender_chestToggle dummy
scoreboard objectives add jtd.passive_ender_hunger food


bossbar add jtd.manabank {"bold":true,"color":"green","text":"♦ Mana Bank ♦"}
bossbar set jtd.manabank color green
bossbar set jtd.manabank max 60
bossbar set jtd.manabank style progress
bossbar set minecraft:jtd.manabank players @a[team=JacobTheDragon]

tellraw @s {"color":"green","bold":true,"text":"Initialization Complete!"}
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 2

say jtd initialized