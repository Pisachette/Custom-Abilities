# reset the active dragonbreath score
    execute if score @s ntd.dragonbreath_active matches 1.. run scoreboard players reset @s ntd.dragonbreath_active

# recharge the dragons breath fuel
    scoreboard players add @s ntd.dragonbreath_fuel 1

# remove dragonbreath markers
    execute if entity @e[type=marker,tag=ntd.db] run kill @e[type=marker,tag=ntd.db]

# deactivation sounds
    execute unless score @s ntd.sfx_check matches 1.. run stopsound @a master entity.wither.death
    execute unless score @s ntd.sfx_check matches 1.. run stopsound @a master entity.evoker.prepare_attack
    execute unless score @s ntd.sfx_check matches 1.. run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 1 .5
    execute unless score @s ntd.sfx_check matches 1.. run playsound minecraft:entity.player.breath master @a ~ ~ ~ 1 .5

# set sfx check score to 1 to prevent sfx looping
    execute unless score @s ntd.sfx_check matches 1.. run scoreboard players set @s ntd.sfx_check 1

# full charge fx
    execute if score @s ntd.dragonbreath_fuel matches 200 run playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 1 2