# DEATH RESET
    execute as @a[team=eDRAG0N7] if score @s ed7.player_health matches 0 unless score @s ed7.death_check matches 1.. run function ed7:resets/death_resets
    execute as @a[team=eDRAG0N7] if score @s ed7.player_health matches 1.. if score @s ed7.death_check matches 1.. run scoreboard players reset @s ed7.death_check


# KENJI (utility wolf)

    # hunger mechanics
        # reset hunger check if the player is not starved
            execute as @a[team=eDRAG0N7] if score @s ed7.player_hunger matches 1.. if score @s ed7.hunger_check matches 1.. run scoreboard players reset @s ed7.hunger_check
        # despawn kenji if the player is starved
            execute as @a[team=eDRAG0N7] if score @s ed7.player_hunger matches 0 at @s run function ed7:kenji/ed7.kenji_despawn
    
    # fx
        execute as @a[team=eDRAG0N7] at @s run function ed7:kenji/ed7_kenji_fx

    # toggle mechanics
        # charge summon meter if the player is holding right-click
            execute as @a[team=eDRAG0N7] if score @s ed7.player_rclick matches 1.. unless score @s ed7.kenji_charge matches 11 run scoreboard players add @s ed7.kenji_charge 1
        # toggle wolf on/off when charge is at 10 ticks
            execute as @a[team=eDRAG0N7] if score @s ed7.kenji_charge matches 10 at @s run function ed7:kenji/ed7_kenji_toggle


# KAZE (mobility wolf)

    # SPRINT MECHANICS
        # charge up sprint meter when player is sprinting
            execute as @a[team=eDRAG0N7] if score @s ed7.player_sprint matches 1.. unless score @s ed7.kaze_sprint_meter matches 60 unless score @s ed7.player_sneak matches 1.. unless score @s ed7.player_health matches 0 run scoreboard players add @s ed7.kaze_sprint_meter 1
        # charge down sprint meter when player walks or sneaks
            execute as @a[team=eDRAG0N7] unless score @s ed7.player_sprint matches 1.. unless score @s ed7.kaze_sprint_meter matches ..0 run scoreboard players remove @s ed7.kaze_sprint_meter 1
            execute as @a[team=eDRAG0N7] if score @s ed7.player_sneak matches 1.. unless score @s ed7.kaze_sprint_meter matches 0 run scoreboard players remove @s ed7.kaze_sprint_meter 1

    # FX
        execute as @a[team=eDRAG0N7] at @s run function ed7:kaze/ed7_kaze_fx
    
    # spawn kaze when the player reaches max sprint meter
        execute as @a[team=eDRAG0N7] if score @s ed7.kaze_sprint_meter matches 60 unless score @s ed7.kaze_check matches 1.. at @s run function ed7:kaze/ed7_kaze_spawn

    # despawn kaze and remove effects if player stops sprinting
        execute as @a[team=eDRAG0N7] unless score @s ed7.player_sprint matches 1.. if score @s ed7.kaze_check matches 1.. at @s run function ed7:kaze/ed7_kaze_despawn

# ATTACK WOLF (Kira)

    # summon the wolf when attacking
        execute as @a[team=eDRAG0N7] if score @s ed7.player_attack_entity matches 1.. unless score @s ed7.kira_active matches 1 at @s run function ed7:kira/ed7_kira_spawn

    # kira bossbar fx
    execute as @e[type=wolf,tag=ed7.kira] run function ed7:kira/ed7_kira_bossbar
    
    # remove kira when her timer reaches 100 ticks
        execute as @a[team=eDRAG0N7] if score @n[type=wolf,tag=ed7.kira] ed7.kira_duration matches 100.. run function ed7:kira/ed7_kira_despawn


# VITALITY WOLF (Kenzo)
execute as @a[team=eDRAG0N7] if score @s ed7.health matches 1..10 unless score @s ed7.kenzo_active matches 1 at @s run function ed7:ed7_kenzo_spawn
execute as @a[team=eDRAG0N7] if score @s ed7.health matches 20.. at @s run function ed7:ed7_kenzo_despawn

# cooldown timer
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_active matches 1 run scoreboard players add @s ed7.kenzo_health_cooldown 1
# resistance
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_active matches 1 run effect give @s resistance 1 1 true
# health effects and sounds
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_health_cooldown matches 1 at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_health_cooldown matches 100.. run function ed7:ed7_kenzo_health_effects

execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 10 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .5
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 20 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .6
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 30 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .7
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 40 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .8
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 50 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .9
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 60 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 70 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1.1
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 80 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1.2
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 90 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1.3

# active particles
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_active matches 1 unless score @s ed7.sneak matches 1.. at @s run particle composter ~ ~2.2 ~ 0 0 0 0 1
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_active matches 1 if score @s ed7.sneak matches 1.. at @s run particle composter ~ ~1.8 ~ 0 0 0 0 1
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_active matches 1 at @e[type=wolf,tag=ed7.kenzo] run particle composter ~ ~1 ~ 0 0 0 0 1

# reset kenzo's heal ability cooldown after 100 ticks (5 seconds)
    execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_heal_cooldown matches 100.. run scoreboard players reset @s ed7.kenzo_heal_cooldown
# RESETS
    execute as @a[team=eDRAG0N7] at @s run function ed7:resets/score_resets