# set initialization score to 1 to prevent re-initialization
    scoreboard players set ca.init jtd.initialize 1

# TEAM
    team add JacobTheDragon
    team modify JacobTheDragon color green
    team modify JacobTheDragon seeFriendlyInvisibles false

# SCOREBOARD OBJECTIVES
    # mana bank
        scoreboard objectives add jtd.manaBank dummy
        scoreboard objectives add jtd.manaRegen dummy
    # track player health
        scoreboard objectives add jtd.health health
    # detect player sneak
        scoreboard objectives add jtd.sneak minecraft.custom:minecraft.sneak_time
    # prevent ability rclick looping
        scoreboard objectives add jtd.item_spamProtection dummy
    # prevent subtitle looping
        scoreboard objectives add jtd.subtitle_check dummy
    # prevent death function looping
        scoreboard objectives add jtd.death_check dummy

    # EARTH
        # detect rclick with earth item
            scoreboard objectives add jtd.earth_rClick dummy
        # track ability 1's wall duration
            scoreboard objectives add jtd.ability_earth_1_wallTimer dummy
        # ability 2 boolean
            scoreboard objectives add jtd.ability_earth_2 dummy
        # mana drain cooldown for ability 2
            scoreboard objectives add jtd.ability_earth_2_manaDrain dummy
        # out of mana check
            scoreboard objectives add jtd.ability_earth_2_scoreReset dummy
    
    # WATER
        # detect rclick with water item
            scoreboard objectives add jtd.water_rClick dummy
        # charge timer for water ability
            scoreboard objectives add jtd.ability_water_charge dummy
        # water ability 2 use cooldown
            scoreboard objectives add jtd.ability_water_manaRegen dummy
        # water ability 2 timer
            scoreboard objectives add jtd.ability_water_manaRegenDuration dummy

    # AIR
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

    # FIRE
        # detect rclick with fire item
            scoreboard objectives add jtd.fire_rClick dummy
        # track ability 2 fireball lifetime
            scoreboard objectives add jtd.ability_fire_fireballTimer dummy
        # track duration of ability 2 hazard
            scoreboard objectives add jtd.ability_fire_fireball_hazard_duration dummy

    # SOUL
        # detect rclick with soul item
            scoreboard objectives add jtd.soul_rClick dummy
        # soul passive boolean
            scoreboard objectives add jtd.soul_passive dummy
        # boolean if player destroys trap
            scoreboard objectives add jtd.soul_trap_attack dummy
        # boolean for player trapped
            scoreboard objectives add jtd.soul_trap_trapped dummy
        # duration of the soul trap
            scoreboard objectives add jtd.soul_trap_lifetime dummy

    # ENDER
        # detect rclick with ender item
            scoreboard objectives add jtd.ender_rClick dummy
        # prevent ability 1 looping
            scoreboard objectives add jtd.ability_ender_scaffoldingCheck dummy
        # toggle for ender ability 2
            scoreboard objectives add jtd.ability_ender_chestToggle dummy
        # detect player hunger for ender item passive
            scoreboard objectives add jtd.passive_ender_hunger food

# BOSSBAR
    bossbar add jtd.manabank {"bold":true,"color":"green","text":"♦ Mana Bank ♦"}
    bossbar set jtd.manabank color green
    bossbar set jtd.manabank max 60
    bossbar set jtd.manabank style progress
    bossbar set minecraft:jtd.manabank players @a[team=JacobTheDragon]

# INITIALIZATION MESSAGE
    say jtd initialized