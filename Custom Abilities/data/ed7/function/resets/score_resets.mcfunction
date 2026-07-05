# reset kenji charge if the player isnt right-clicking
    execute unless score @s ed7.player_rclick matches 1.. run scoreboard players reset @s ed7.kenji_charge
    
# if player attacks an entity, reset the attack score
    execute if score @s ed7.player_attack_entity matches 1.. run scoreboard players reset @s ed7.player_attack_entity

# reset player sprint score if player starts walking or sneaking
    execute if score @s ed7.player_walk matches 1.. run scoreboard players reset @s ed7.player_sprint
    execute if score @s ed7.player_sneak matches 1.. run scoreboard players reset @s ed7.player_sprint

# make walk score boolean
    execute if score @s ed7.player_walk matches 1.. run scoreboard players reset @s ed7.player_walk

# make sneak score boolean
    execute if score @s ed7.player_sneak matches 1.. run scoreboard players reset @s ed7.player_sneak

# make right-click scoreboolean
    execute if score @s ed7.player_rclick matches 1.. run scoreboard players reset @s ed7.player_rclick