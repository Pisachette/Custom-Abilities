# DEATH RESET
    # reset death check after respawn
        execute as @a[team=NicTheDragon] if score @s ntd.health matches 1.. if score @s ntd.death_check matches 1.. run scoreboard players reset @s ntd.death_check
    # play death reset function on death
        execute as @a[team=NicTheDragon] if score @s ntd.health matches 0 unless score @s ntd.death_check matches 1.. run function ntd:resets/death_reset


# ABILITIES

    # FLIGHTSPEED
        # flightspeed apply
            execute as @a[team=NicTheDragon] if score @s ntd.fly matches 1.. if score @s ntd.sneak matches 1.. unless score @s ntd.flightspeed_applied matches 1.. run function ntd:abilities/ntd_ability_flightspeed_apply
        # flightspeed remove
            execute as @a[team=NicTheDragon] unless score @s ntd.sneak matches 1.. if score @s ntd.flightspeed_applied matches 1.. run function ntd:abilities/ntd_ability_flightspeed_remove

    # DRAGONBREATH
        # dragonbreath activate
            execute as @a[team=NicTheDragon] if score @s ntd.rclick_dragonheart matches 1 if score @s ntd.dragonbreath_fuel matches 2.. at @s run function ntd:abilities/ntd_ability_dragonbreath_active
        # dragonbreath recharge
            execute as @a[team=NicTheDragon] unless score @s ntd.rclick_dragonheart matches 1.. unless score @s ntd.dragonbreath_fuel matches 200.. at @s run function ntd:abilities/ntd_ability_dragonbreath_recharge
        # deactivate at 0 fuel
            execute as @a[team=NicTheDragon] if score @s ntd.dragonbreath_fuel matches ..2 at @s run function ntd:abilities/ntd_ability_dragonbreath_recharge
        # dragonbreath bossbar
            # show fuel value on bossbar
                execute as @a[team=NicTheDragon] store result bossbar ntd.dragon_breath value run scoreboard players get @s ntd.dragonbreath_fuel
            # toggle bossbar visibility
                # toggle on
                    execute as @a[team=NicTheDragon] unless score @s ntd.dragonbreath_bossbar_active matches 1.. if items entity @s weapon.mainhand poisonous_potato[custom_data={ntd.dragonheart:true}] run bossbar set ntd.dragon_breath visible true
                    execute as @a[team=NicTheDragon] unless score @s ntd.dragonbreath_bossbar_active matches 1.. if items entity @s weapon.mainhand poisonous_potato[custom_data={ntd.dragonheart:true}] run scoreboard players set @s ntd.dragonbreath_bossbar_active 1
                # toggle off
                    execute as @a[team=NicTheDragon] if score @s ntd.dragonbreath_bossbar_active matches 1.. unless items entity @s weapon.mainhand poisonous_potato[custom_data={ntd.dragonheart:true}] run bossbar set ntd.dragon_breath visible false
                    execute as @a[team=NicTheDragon] if score @s ntd.dragonbreath_bossbar_active matches 1.. unless items entity @s weapon.mainhand poisonous_potato[custom_data={ntd.dragonheart:true}] run scoreboard players reset @s ntd.dragonbreath_bossbar_active
    
    # DRAGONHEAD
        # toggle on
            execute as @a[team=NicTheDragon] if items entity @s weapon.offhand poisonous_potato[custom_data={ntd.dragonheart:true}] unless score @s ntd.dragonhead_active matches 1.. at @s run function ntd:abilities/ntd_ability_dragonhead_apply
        # toggle off
            execute as @a[team=NicTheDragon] unless items entity @s armor.head dragon_head[custom_data={ntd.dragonhead:true}] if score @s ntd.dragonhead_active matches 1.. at @s run function ntd:abilities/ntd_ability_dragonhead_remove
        # remove dragonhead from inventory
            execute as @a[team=NicTheDragon] if items entity @s container.* dragon_head[custom_data={ntd.dragonhead:true}] run clear @s dragon_head[custom_data={ntd.dragonhead:true}]
        
    # TAKEOFF
        # takeoff cancel fx
            execute as @a[team=NicTheDragon] if score @s ntd.takeoff_charge matches 100.. unless items entity @s weapon.mainhand poisonous_potato[custom_data={ntd.dragonheart:true}] run effect clear @s jump_boost
            execute as @a[team=NicTheDragon] if score @s ntd.takeoff_charge matches 1.. unless items entity @s weapon.mainhand poisonous_potato[custom_data={ntd.dragonheart:true}] run title @s actionbar ""
        # remove charge if player takes hand off dragonheart
            execute as @a[team=NicTheDragon] unless items entity @s weapon.mainhand poisonous_potato[custom_data={ntd.dragonheart:true}] run scoreboard players reset @s ntd.takeoff_charge
        # charge up takeoff
            execute as @a[team=NicTheDragon] if items entity @s weapon.mainhand poisonous_potato[custom_data={ntd.dragonheart:true}] if score @s ntd.sneak matches 1.. unless score @s ntd.takeoff_charge matches 101.. unless score @s ntd.health matches 0 run scoreboard players add @s ntd.takeoff_charge 1
        # activate takeoff when player jumps while charged
            execute as @a[team=NicTheDragon] if score @s ntd.takeoff_charge matches 100.. run effect give @s jump_boost 1 25 true
            execute as @a[team=NicTheDragon] if score @s ntd.takeoff_charge matches 100.. if score @s ntd.jump matches 1.. at @s run function ntd:abilities/ntd_ability_takeoff
        # takeoff FX
            execute as @a[team=NicTheDragon] unless score @s ntd.health matches 0 if items entity @s weapon.mainhand poisonous_potato[custom_data={ntd.dragonheart:true}] at @s run function ntd:abilities/ntd_ability_takeoff_fx
        

# SCORE RESET
    execute as @a[team=NicTheDragon] run function ntd:resets/score_reset