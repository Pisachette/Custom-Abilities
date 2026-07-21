# DEATH RESET
    # reset death check when player respawns
        execute as @a[team=JacobTheDragon] if score @s jtd.health matches 1.. if score @s jtd.death_check matches 1 run scoreboard players reset @s jtd.death_check
    # run death reset function when player dies
        execute as @a[team=JacobTheDragon] if score @s jtd.health matches 0 unless score @s jtd.death_check matches 1 run function jtd:mechanics/jtd_mechanics_death

    # remove trapped status if player dies while in soul trap
        execute as @a if score @s jtd.soul_trap_trapped matches 1 if score @s jtd.health matches 0 run function jtd:abilities/soul/jtd_ability_soul_trap_untrapped

# MECHANICS
    # RIGHT-CLICK SPAM PROTECTION MECHANICS
        function jtd:mechanics/jtd_mechanics_spamprotection

    # MANA BANK MECHANICS
        function jtd:mechanics/jtd_mechanics_mana
            # set manabank color to green if player isnt using an ability
                execute as @a[team=JacobTheDragon] if score @s jtd.item_spamProtection matches 0 run bossbar set jtd.manabank color green

    # ITEM SWAP MECHANICS
        function jtd:mechanics/jtd_mechanics_swap
        
    # SUBTITLE DISPLAY MECHANICS
        function jtd:mechanics/jtd_mechanics_subtitle
    
    # PASSIVE ABILITIES
        function jtd:abilities/jtd_passives


# ACTIVATE ITEM ABILITIES

    # AIR
        # run executing function when player right clicks with item
            execute as @a[team=JacobTheDragon] if score @s jtd.air_rClick matches 1 run function jtd:abilities/air/jtd_ability_air
        
        # ability 2 smoke bomb effects
            function jtd:abilities/air/jtd_ability_air_ability2

        # SPEED MECHANICS
            # execute the speed increment function while windborne mode is active
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneToggle matches 1 run function jtd:abilities/air/jtd_ability_air_speed
            # remove the speed effects if windborne is deactivated
                execute as @a[team=JacobTheDragon] unless score @s jtd.manaBank matches 1.. unless score @s jtd.ability_air_windborneReset matches 1 run function jtd:abilities/air/jtd_ability_air_speed_remove
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneToggle matches 1 if score @s jtd.ability_air_windborneSprint matches 1.. run scoreboard players reset @s jtd.ability_air_windborneSprintDecay
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneToggle matches 1 if score @s jtd.ability_air_windborneSprint matches 0 unless score @s jtd.ability_air_windborneSprintDecay matches 31 run scoreboard players add @s jtd.ability_air_windborneSprintDecay 1
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneToggle matches 1 if score @s jtd.ability_air_windborneSprintDecay matches 30 unless score @s jtd.ability_air_windborneReset matches 1 run function jtd:abilities/air/jtd_ability_air_speed_remove
                execute as @a[team=JacobTheDragon] unless score @s jtd.ability_air_windborneToggle matches 1 if score @s jtd.ability_air_windborneSprintDuration matches 1.. unless score @s jtd.ability_air_windborneReset matches 1 run function jtd:abilities/air/jtd_ability_air_speed_remove
                execute as @a[team=JacobTheDragon] unless items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] if score @s jtd.ability_air_windborneSprintDuration matches 1.. unless score @s jtd.ability_air_windborneReset matches 1 run function jtd:abilities/air/jtd_ability_air_speed_remove
            # drain mana every 0.5 seconds while sprinting in windborne mode, and play a sound
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneManaDrainLoop matches 10 unless score @s jtd.manaBank matches 0 run scoreboard players remove @s jtd.manaBank 1
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneManaDrainLoop matches 5 unless score @s jtd.manaBank matches 0 at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 2
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneManaDrainLoop matches 10 unless score @s jtd.manaBank matches 0 run scoreboard players set @s jtd.ability_air_windborneManaDrainLoop 0
            # remove the mana drain loop if the player stops sprinting, or deactivates windborne mode
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneSprintDecay matches 30.. run scoreboard players set @s jtd.ability_air_windborneManaDrainLoop 0
                execute as @a[team=JacobTheDragon] unless score @s jtd.ability_air_windborneToggle matches 1.. run scoreboard players set @s jtd.ability_air_windborneManaDrainLoop 0

        # JUMP MECHANICS
            # give jump strength as long as you have enough mana
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneToggle matches 1 unless score @s jtd.ability_air_windborneJump matches 1.. unless score @s jtd.manaBank matches ..4 run attribute @s jump_strength modifier add jtd.windbornejump 1 add_multiplied_base
            # remove jump strength if you run out of mana, or you toggle windborne off
                execute as @a[team=JacobTheDragon] unless score @s jtd.ability_air_windborneToggle matches 1.. run attribute @s jump_strength modifier remove jtd.windbornejump
                execute as @a[team=JacobTheDragon] unless score @s jtd.manaBank matches 5.. run attribute @s jump_strength modifier remove jtd.windbornejump
            # play sounds and fx when player jumps with sufficient mana
                execute as @a[team=JacobTheDragon] run function jtd:abilities/air/jtd_ability_air_jump_fx
            # jump reset
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneJump matches 1.. run scoreboard players reset @s jtd.ability_air_windborneJump
        
        # remove windbore status when player switches items, or runs out of mana
            execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] if score @s jtd.manaBank matches 0 if score @s jtd.ability_air_windborneToggle matches 1.. at @s run playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 1 .5
            execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] if score @s jtd.manaBank matches 0 if score @s jtd.ability_air_windborneToggle matches 1.. at @s run playsound minecraft:block.vault.activate master @a ~ ~ ~ 1 .5
            execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] if score @s jtd.manaBank matches 0 if score @s jtd.ability_air_windborneToggle matches 1.. run title @s reset
            execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] if score @s jtd.manaBank matches 0 if score @s jtd.ability_air_windborneToggle matches 1.. run scoreboard players reset @s jtd.ability_air_windborneToggle

            execute as @a[team=JacobTheDragon] unless items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] if score @s jtd.ability_air_windborneToggle matches 1.. at @s run playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 1 .5
            execute as @a[team=JacobTheDragon] unless items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] if score @s jtd.ability_air_windborneToggle matches 1.. at @s run playsound minecraft:block.vault.activate master @a ~ ~ ~ 1 .5
            execute as @a[team=JacobTheDragon] unless items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] if score @s jtd.ability_air_windborneToggle matches 1.. run title @s reset
            execute as @a[team=JacobTheDragon] unless items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] if score @s jtd.ability_air_windborneToggle matches 1.. run scoreboard players reset @s jtd.ability_air_windborneToggle
            # if the player has windborne inactive, remove their sprint duration score
                execute as @a[team=JacobTheDragon] unless score @s jtd.ability_air_windborneToggle matches 1.. run scoreboard players set @s jtd.ability_air_windborneSprintDuration 0
            # increment the sprint duration score if the player is sprinting in windborne mode, and reset it if they stop
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneToggle matches 1 if score @s jtd.ability_air_windborneSprint matches 1.. run scoreboard players add @s jtd.ability_air_windborneSprintDuration 1
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneSprintDecay matches 30.. if score @s jtd.ability_air_windborneSprintDuration matches 1.. run scoreboard players set @s jtd.ability_air_windborneSprintDuration 0
            # make sprinting boolean
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneSprint matches 1.. run scoreboard players set @s jtd.ability_air_windborneSprint 0
            # windborne active color fx
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneToggle matches 1 run bossbar set jtd.manabank color white
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_air_windborneToggle matches 1 run title @s actionbar [{"bold":true,"color":"white","text":"♦ "},{"bold":false,"color":"white",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"white","text":" ♦"}]
        

    # EARTH
        # run executing function when player right clicks with item
            execute as @a[team=JacobTheDragon] if score @s jtd.earth_rClick matches 1 run function jtd:abilities/earth/jtd_ability_earth

        # ABILITY 1
            # wall tick fx
                function jtd:abilities/earth/jtd_ability_earth_ability_1_tick
            
        # ABILITY 2
            # remove statue effects when not in use, or if 0 mana, or if not crouching
                execute as @a[team=JacobTheDragon] unless score @s jtd.earth_rClick matches 1 if score @s jtd.ability_earth_2 matches 1 run function jtd:abilities/earth/jtd_ability_earth_ability_2_remove
                execute as @a[team=JacobTheDragon] if score @s jtd.manaBank matches 0 if score @s jtd.ability_earth_2 matches 1 run function jtd:abilities/earth/jtd_ability_earth_ability_2_remove
                execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1.. if score @s jtd.ability_earth_2 matches 1 run function jtd:abilities/earth/jtd_ability_earth_ability_2_remove

            # ability 2 mana drain mechanics
                function jtd:abilities/earth/jtd_ability_earth_ability_2_mana_drain


    # ENDER
        # run executing function when player right clicks with item
            execute as @a[team=JacobTheDragon] if score @s jtd.ender_rClick matches 1 run function jtd:abilities/ender/jtd_ability_ender
        

    # FIRE
        # run executing function when player right clicks with item
            execute as @a[team=JacobTheDragon] if score @s jtd.fire_rClick matches 1 run function jtd:abilities/fire/jtd_ability_fire
            
        # ABILITY 1
            # damage entities hit by ability 1
                execute as @e[tag=!jtd.fire,team=!JacobTheDragon] at @s if entity @e[tag=jtd.fire,distance=..2] run damage @s 8 on_fire by @n[team=JacobTheDragon,type=player]
            # set entities hit by ability 1 on fire
                execute as @e[tag=!jtd.fire,team=!JacobTheDragon] at @s if entity @e[tag=jtd.fire,distance=..2] run data merge entity @s {Fire:80}
            # remove fire markers after hitting an entity
                execute as @e[tag=!jtd.fire,team=!JacobTheDragon] at @s if entity @e[tag=jtd.fire,distance=..2] run kill @e[type=area_effect_cloud,tag=jtd.fire]
                    
        # ABILITY 2
            # calculate fireball trajectory
                function jtd:abilities/fire/jtd_ability_fireball_trajectory
            # add lifetime to the fireball hazard marker, and kill it after the duration is up
                execute as @e[tag=jtd.fireball_hazard,type=item_display] run scoreboard players add @s jtd.ability_fire_fireball_hazard_duration 1
                execute as @e[tag=jtd.fireball_hazard,type=item_display] if score @s jtd.ability_fire_fireball_hazard_duration matches 200.. run kill @s
            # execute fireball fx when landing
                execute as @e[type=marker,tag=jtd.fireball] at @s unless block ~ ~ ~ #jtd:fireball_passthrough_blocks run function jtd:abilities/fire/jtd_ability_fireball_land_fx
                execute at @e[tag=jtd.fireball_hazard,type=item_display] run function jtd:abilities/fire/jtd_ability_fireball_hazard_fx
            # display radius particles
                execute as @e[type=item_display,tag=jtd.fireball_hazard] at @s run rotate @s ~30 ~
                execute as @e[type=item_display,tag=jtd.fireball_hazard] at @s unless block ~ ~ ~ #jtd:fireball_passthrough_blocks run tp @s ~ ~.1 ~

            
    # SOUL
        # run executing function when player right clicks with item
            execute as @a[team=JacobTheDragon] if score @s jtd.soul_rClick matches 1 run function jtd:abilities/soul/jtd_ability_soul
        
        # FX
            # soul swarm fx
                execute at @e[type=vindicator,tag=jtd.soulswarm] run particle soul ~ ~1 ~ .3 .5 .3 0 1
                execute at @e[type=vindicator,tag=jtd.soulswarm] run particle electric_spark ~ ~1 ~ .1 .4 .1 0 2
                execute at @e[type=vindicator,tag=jtd.soulswarm] run playsound minecraft:particle.soul_escape hostile @a ~ ~ ~ 1 .5
            # soul trap fx
                execute at @e[type=block_display,tag=jtd.soul_trap] run particle minecraft:soul_fire_flame ~.5 ~.5 ~.5 .3 .3 .3 0 1
            # trap buff outline
                execute as @e[type=interaction,tag=jtd.soul_trap] at @s if entity @e[type=vindicator,tag=jtd.soulswarm,distance=..10] run tp @s ~ ~ ~ ~1152 ~
                execute as @e[type=interaction,tag=jtd.soul_trap] at @s if entity @e[type=vindicator,tag=jtd.soulswarm,distance=..10] run particle enchanted_hit ^ ^.7 ^10 0 0 0 0 1
                execute as @e[type=interaction,tag=jtd.soul_trap] at @s if entity @e[type=vindicator,tag=jtd.soulswarm,distance=..10] run particle enchanted_hit ^ ^.7 ^-10 0 0 0 0 1
                execute as @e[type=interaction,tag=jtd.soul_trap] at @s if entity @e[type=vindicator,tag=jtd.soulswarm,distance=..10] run particle enchanted_hit ^10 ^.7 ^ 0 0 0 0 1
                execute as @e[type=interaction,tag=jtd.soul_trap] at @s if entity @e[type=vindicator,tag=jtd.soulswarm,distance=..10] run particle enchanted_hit ^-10 ^.7 ^ 0 0 0 0 1
                execute as @e[type=interaction,tag=jtd.soul_trap] at @s if entity @e[type=vindicator,tag=jtd.soulswarm,distance=..10] run particle witch ~ ~1 ~ 0 0 0 0 1

        # SOUL TRAP
            # activate soul trap when player steps on trap
                execute as @a[team=!JacobTheDragon] at @s if entity @e[type=interaction,tag=jtd.soul_trap_interaction,distance=..1] run function jtd:abilities/soul/jtd_ability_soul_trap_activate
            # increment lifetime of the trap
                execute as @e[type=slime,tag=jtd.trap_slime] run scoreboard players add @s jtd.soul_trap_lifetime 1
            # remove trap after 5 seconds
                execute as @e[type=slime,tag=jtd.trap_slime] if score @s jtd.soul_trap_lifetime matches 100.. unless entity @a[scores={jtd.soul_trap_trapped=1}] run kill @s
            # player trapped fx
                execute as @a[team=!JacobTheDragon] at @s if entity @e[type=slime,tag=jtd.trap_slime,distance=..1,scores={jtd.soul_trap_lifetime=1}] run function jtd:abilities/soul/jtd_ability_soul_trap_trapped
            # player escaped fx
                execute as @a[team=!JacobTheDragon] at @s if score @s jtd.soul_trap_trapped matches 1 unless entity @e[type=slime,tag=jtd.trap_slime,distance=..1] run function jtd:abilities/soul/jtd_ability_soul_trap_untrapped
            
            # passive ability particles
                function jtd:abilities/soul/jtd_passive_soul


    # WATER
        # run executing function when player right clicks with item
            execute as @a[team=JacobTheDragon] if score @s jtd.water_rClick matches 1 run function jtd:abilities/water/jtd_ability_water

        # ABILITY 1
            # deactivation fx
                # sounds
                    execute as @a[team=JacobTheDragon] if score @s jtd.ability_water_charge matches 1.. unless score @s jtd.water_rClick matches 1.. at @s run stopsound @s master minecraft:block.conduit.activate
                    execute as @a[team=JacobTheDragon] if score @s jtd.ability_water_charge matches 1.. unless score @s jtd.water_rClick matches 1.. at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 2
                    execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1.. if score @s jtd.ability_water_charge matches 1.. at @s run stopsound @s master minecraft:block.conduit.activate
                    execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1.. if score @s jtd.ability_water_charge matches 1.. at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 2
                # reset charge score
                    execute as @a[team=JacobTheDragon] if score @s jtd.ability_water_charge matches 1.. unless score @s jtd.water_rClick matches 1.. run scoreboard players reset @s jtd.ability_water_charge
                    execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1.. if score @s jtd.ability_water_charge matches 1.. run scoreboard players reset @s jtd.ability_water_charge
        
        # ABILITY 2
            # double mana speed
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_water_manaRegen matches 1 if score @s jtd.manaRegen matches 10 run scoreboard players add @s jtd.manaBank 1
            # ability duration
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_water_manaRegen matches 1 run scoreboard players add @s jtd.ability_water_manaRegenDuration 1
            # duration end effects
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_water_manaRegenDuration matches 600.. at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 .5
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_water_manaRegenDuration matches 600.. at @s run playsound minecraft:entity.allay.ambient_without_item master @a ~ ~ ~ 1 .5
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_water_manaRegenDuration matches 600.. run scoreboard players reset @s jtd.ability_water_manaRegen
                execute as @a[team=JacobTheDragon] if score @s jtd.ability_water_manaRegenDuration matches 600.. run scoreboard players reset @s jtd.ability_water_manaRegenDuration
            # color fx
                # mana bank
                    execute as @a[team=JacobTheDragon] if score @s jtd.ability_water_manaRegen matches 1 run bossbar set jtd.manabank color blue
                # actionbar
                    execute as @a[team=JacobTheDragon] if score @s jtd.ability_water_manaRegen matches 1 run title @s actionbar [{"bold":true,"color":"blue","text":"♦ "},{"bold":false,"color":"blue",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"blue","text":" ♦"}]


# RESETS
    # if the player stops holding right-click, reset the spam detection score
        # air
            execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] if score @s jtd.air_rClick matches 0 run scoreboard players set @s jtd.item_spamProtection 0
        # earth
            execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdEarth:true}] if score @s jtd.earth_rClick matches 0 run scoreboard players set @s jtd.item_spamProtection 0
        # ender
            execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdEnder:true}] if score @s jtd.ender_rClick matches 0 run scoreboard players set @s jtd.item_spamProtection 0
        # fire
            execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdFire:true}] if score @s jtd.fire_rClick matches 0 run scoreboard players set @s jtd.item_spamProtection 0
        # soul
            execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdSoul:true}] if score @s jtd.soul_rClick matches 0 run scoreboard players set @s jtd.item_spamProtection 0
        # water
            execute as @a[team=JacobTheDragon] if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdWater:true}] if score @s jtd.water_rClick matches 0 run scoreboard players set @s jtd.item_spamProtection 0
    
    # make right click detection boolean
        # air
            execute as @a[team=JacobTheDragon] if score @s jtd.air_rClick matches 1.. run scoreboard players set @s jtd.air_rClick 0
        # earth
            execute as @a[team=JacobTheDragon] if score @s jtd.earth_rClick matches 1.. run scoreboard players set @s jtd.earth_rClick 0
        # ender
            execute as @a[team=JacobTheDragon] if score @s jtd.ender_rClick matches 1.. run scoreboard players set @s jtd.ender_rClick 0
        # fire
            execute as @a[team=JacobTheDragon] if score @s jtd.fire_rClick matches 1.. run scoreboard players set @s jtd.fire_rClick 0
        # soul
            execute as @a[team=JacobTheDragon] if score @s jtd.soul_rClick matches 1.. run scoreboard players set @s jtd.soul_rClick 0
        # water
            execute as @a[team=JacobTheDragon] if score @s jtd.water_rClick matches 1.. run scoreboard players set @s jtd.water_rClick 0

    # make crouch detection boolean
        execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1.. run scoreboard players reset @s jtd.sneak