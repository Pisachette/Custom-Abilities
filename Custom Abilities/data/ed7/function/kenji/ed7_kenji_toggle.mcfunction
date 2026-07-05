# ADD 1 TO KENJI TOGGLE SCORE IF PLAYER ISNT OUT OF HUNGER
    execute unless score @s ed7.player_hunger matches 0 run scoreboard players add @s ed7.kenji_toggle 1

# INVALID SUMMON
    # invalid summon message
        execute if score @s ed7.player_hunger matches 0 run title @s actionbar [{"color":"red","text":"You cannot summon "},{"bold":true,"color":"gold","text":"Kenji "},{"color":"red","text":"with 0 hunger!"}]
    # invalid summon sound
        execute if score @s ed7.player_hunger matches 0 run playsound block.note_block.didgeridoo master @a ~ ~ ~ 1 .5

# SPAWN KENJI
    execute if score @s ed7.kenji_toggle matches 1 at @s run function ed7:kenji/ed7.kenji_spawn

# DESPAWN KENJI
    execute if score @s ed7.kenji_toggle matches 3 at @s run function ed7:kenji/ed7.kenji_despawn