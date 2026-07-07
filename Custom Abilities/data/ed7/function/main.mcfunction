# DEATH RESET
    execute as @a[team=eDRAG0N7] if score @s ed7.player_health matches 0 unless score @s ed7.death_check matches 1.. run function ed7:resets/death_resets
    execute as @a[team=eDRAG0N7] if score @s ed7.player_health matches 1.. if score @s ed7.death_check matches 1.. run scoreboard players reset @s ed7.death_check


# KENJI (utility wolf)

    # hunger mechanics
        # reset hunger check if the player is not starved
            execute as @a[team=eDRAG0N7] if score @s ed7.player_hunger matches 1.. if score @s ed7.kenji_hunger_check matches 1.. run scoreboard players reset @s ed7.kenji_hunger_check
        # despawn kenji if the player is starved
            execute as @a[team=eDRAG0N7] if score @s ed7.player_hunger matches 0 unless score @s ed7.kenji_hunger_check matches 1.. at @s run function ed7:kenji/ed7.kenji_despawn
        # set hunger check to 1 to prevent function looping
            execute as @a[team=eDRAG0N7] if score @s ed7.player_hunger matches 0 unless score @s ed7.kenji_hunger_check matches 1.. run scoreboard players set @s ed7.kenji_hunger_check 1
    
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
            execute as @a[team=eDRAG0N7] if score @s ed7.player_sneak matches 1.. if score @s ed7.kaze_sprint_meter matches 60.. at @s run function ed7:kaze/ed7_kaze_despawn
            execute as @a[team=eDRAG0N7] if score @s ed7.player_sneak matches 1.. unless score @s ed7.kaze_sprint_meter matches ..0 run scoreboard players remove @s ed7.kaze_sprint_meter 1

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
        execute as @a[team=eDRAG0N7] if score @n[type=wolf,tag=ed7.kira] ed7.kira_duration matches 200.. run function ed7:kira/ed7_kira_despawn


# KENZO (vitality wolf)

    # spawn kenzo when player is below 11 health
        execute as @a[team=eDRAG0N7] if score @s ed7.player_health matches 1..10 unless score @s ed7.kenzo_active matches 1 at @s run function ed7:kenzo/ed7_kenzo_spawn
    # despawn kenzo when player is above 20 health
        execute as @a[team=eDRAG0N7] if score @s ed7.player_health matches 20.. at @s run function ed7:kenzo/ed7_kenzo_despawn

    # run kenzo's ability loop if he is active
        execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_active matches 1 at @s run function ed7:kenzo/ed7_kenzo_ability_loop


# RESETS
    execute as @a[team=eDRAG0N7] at @s run function ed7:resets/score_resets