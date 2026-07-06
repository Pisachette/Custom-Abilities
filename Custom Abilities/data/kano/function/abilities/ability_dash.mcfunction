# set dash_ready playerstate to 1 when sneaking
    execute if score @s kano.player_sneak matches 1.. run scoreboard players set @s kano.dash_ready 1
# remove player's jump when sneaking
    execute if score @s kano.player_sneak matches 1.. run attribute @s jump_strength modifier add kano.jump -.99 add_multiplied_base

# play dash sound
    execute if score @s kano.player_sneak matches 1.. if score @s kano.player_jump matches 1.. unless score @s kano.dash_cooldown matches 1.. at @s run playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 1 .5
# grant movement speed for dash when player jumps while crouched
    execute if score @s kano.player_sneak matches 1.. if score @s kano.player_jump matches 1.. unless score @s kano.dash_cooldown matches 1.. run attribute @s movement_speed modifier add kano.movespeed 12 add_multiplied_base
# start dash cooldown upon crouch-jumping
    execute if score @s kano.player_sneak matches 1.. if score @s kano.player_jump matches 1.. unless score @s kano.dash_cooldown matches 1.. run scoreboard players add @s kano.dash_cooldown 1

# continue dash cooldown
    execute if score @s kano.dash_cooldown matches 1.. run scoreboard players add @s kano.dash_cooldown 1

# remove speed attribute if player stands up
    execute if score @s kano.dash_ready matches 1.. unless score @s kano.player_sneak matches 1.. run attribute @s movement_speed modifier remove kano.movespeed

# remove speed attribute after dash is over
execute if score @s kano.dash_cooldown matches 5.. run attribute @s movement_speed modifier remove kano.movespeed

# reset cooldown after 20 ticks (1s)
execute if score @s kano.dash_cooldown matches 20.. run scoreboard players reset @s kano.dash_cooldown