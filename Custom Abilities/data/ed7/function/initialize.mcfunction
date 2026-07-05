# INITIALIZE SCOREBOARD OBJECTIVES
    # track player health
        scoreboard objectives add ed7.player_health health
    # track player sprinting
        scoreboard objectives add ed7.player_sprint minecraft.custom:sprint_one_cm
    # track player hunger
        scoreboard objectives add ed7.player_hunger food
    # track player sneaking
        scoreboard objectives add ed7.player_sneak minecraft.custom:minecraft.sneak_time
    # track player walking
        scoreboard objectives add ed7.player_walk minecraft.custom:minecraft.walk_one_cm
    # track player right-clicking
        scoreboard objectives add ed7.player_rclick dummy
    # track player attacking entities
        scoreboard objectives add ed7.player_attack_entity minecraft.custom:minecraft.damage_dealt

    # playerstate flags to prevent looping
        scoreboard objectives add ed7.death_check dummy

    # stores the sprint duration of a player
        scoreboard objectives add ed7.kaze_sprint_meter dummy
        scoreboard objectives add ed7.kaze_check dummy

    # stores the charge time of kenji
        scoreboard objectives add ed7.kenji_charge dummy
    # this score will be 1 when kenji is active, 0 when inactive
        scoreboard objectives add ed7.kenji_toggle dummy
    # if the player is starved, this score will be 1, otherwise 0        
        scoreboard objectives add ed7.kenji_hunger_check dummy

    # this score will be 1 when kaze is active, 0 when inactive
        scoreboard objectives add ed7.kenzo_active dummy
    # a cooldown for kenzo's health regen ability
        scoreboard objectives add ed7.kenzo_heal_cooldown dummy

    # tracks how long kira is active for (displayed on bossbar)
        scoreboard objectives add ed7.kira_duration dummy
    # this score will be 1 when kira is active, 0 when inactive
        scoreboard objectives add ed7.kira_active dummy

# INITIALIZE TEAM
    team add eDRAG0N7
    team modify eDRAG0N7 color aqua
    team modify eDRAG0N7 seeFriendlyInvisibles false
    team modify eDRAG0N7 deathMessageVisibility never

# INITIALIZE BOSSBAR TO VISUALIZE KIRA'S DURATION
    bossbar add ed7.kira_duration {"bold":true,"color":"dark_red","text":"Kira"}
    bossbar set ed7.kira_duration color red
    bossbar set ed7.kira_duration max 10
    bossbar set ed7.kira_duration style notched_10
    bossbar set minecraft:ed7.kira_duration players @a[team=eDRAG0N7]

# GIVE PLAYER THE "TRUSTY BONE" ITEM
    clear @a[team=eDRAG0N7] poisonous_potato[custom_data={ed7.bone:true}]

    give @a[team=eDRAG0N7] poisonous_potato[consumable={consume_seconds:999999,animation:"brush"},custom_data={ed7.bone:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:bone",item_name={"bold":true,"color":"aqua","italic":false,"text":"Trusty Bone"},lore=[[{"color":"gray","italic":false,"text":"Hold "},{"bold":true,"color":"dark_aqua","italic":false,"text":"Interact "},{"color":"gray","italic":false,"text":"to toggle "},{"bold":true,"color":"gold","italic":false,"text":"Kenji"}],{"color":"black","text":"."},[{"color":"dark_gray","italic":false,"text":"When active, "},{"bold":true,"color":"gold","italic":false,"text":"Kenji "},{"color":"dark_gray","italic":false,"text":"will grant:"}],[{"color":"green","italic":false,"text":"+50% "},{"color":"gray","italic":false,"text":"mining speed"}],[{"color":"green","italic":false,"text":"+100% "},{"color":"gray","italic":false,"text":"Luck"}],{"color":"red","italic":false,"text":"∞ Hunger"}],unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}] 1

reload