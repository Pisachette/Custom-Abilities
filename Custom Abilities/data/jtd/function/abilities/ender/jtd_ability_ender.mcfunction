# CHANGE MANABAR COLOR BASED ON MANA COUNT

    # ability 1
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 3.. run bossbar set jtd.manabank color green
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..2 run bossbar set jtd.manabank color red
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 3.. run title @s actionbar [{"bold":true,"color":"green","text":"♦ "},{"bold":false,"color":"green",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"green","text":" ♦"}]
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..2 run title @s actionbar [{"bold":true,"color":"red","text":"♦ "},{"bold":false,"color":"red",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"red","text":" ♦"}]
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 if score @s jtd.manaBank matches ..2 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5

    # ability 2
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 30.. run bossbar set jtd.manabank color green
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..29 run bossbar set jtd.manabank color red
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 30.. run title @s actionbar [{"bold":true,"color":"green","text":"♦ "},{"bold":false,"color":"green",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"green","text":" ♦"}]
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..29 run title @s actionbar [{"bold":true,"color":"red","text":"♦ "},{"bold":false,"color":"red",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"red","text":" ♦"}]
        execute if score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 if score @s jtd.manaBank matches ..29 unless entity @e[type=marker,tag=jtd.enderchest_marker] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5


# ABILITY 1

    # set a score check to prevent undelayed loop
        execute unless score @s jtd.sneak matches 1.. unless score @s jtd.manaBank matches ..2 run execute at @s if block ~ ~-1 ~ #air run scoreboard players set @s jtd.ability_ender_scaffoldingCheck 1
    # place block under player
        execute if score @s jtd.ability_ender_scaffoldingCheck matches 1 at @s run setblock ~ ~-1 ~ scaffolding keep
    # play sounds on block place
        execute if score @s jtd.ability_ender_scaffoldingCheck matches 1 at @s run playsound minecraft:block.scaffolding.place master @a ~ ~-1 ~ 1 .5
        execute if score @s jtd.ability_ender_scaffoldingCheck matches 1 at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 1 2
    # show particle on block place
        execute if score @s jtd.ability_ender_scaffoldingCheck matches 1 at @s run particle minecraft:reverse_portal ~ ~-1 ~ .4 .4 .4 0 20
    # spend mana
        execute if score @s jtd.ability_ender_scaffoldingCheck matches 1 run scoreboard players remove @s jtd.manaBank 3
    # reset score check for loop delay
        execute if score @s jtd.ability_ender_scaffoldingCheck matches 1 run scoreboard players reset @s jtd.ability_ender_scaffoldingCheck


# ABILITY 2

    # add score to enderchest_toggle for boolean
        execute if score @s jtd.sneak matches 1.. unless score @s jtd.manaBank matches ..29 if score @s jtd.item_spamProtection matches 1 run scoreboard players add @s jtd.ability_ender_chestToggle 1
        execute if score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 if score @s jtd.ability_ender_chestToggle matches 2 run scoreboard players add @s jtd.ability_ender_chestToggle 1
    # place marker and chest
        execute if score @s jtd.ability_ender_chestToggle matches 1 at @s run summon marker ~ ~ ~ {Tags:["jtd.enderchest_marker"]}
        execute if score @s jtd.ability_ender_chestToggle matches 1 at @s run summon ender_pearl ~ ~ ~ {NoGravity:1b,Owner:[I;-2122753675,-882291925,-1497221718,-353611644],Tags:["jtd.enderchest_marker_2"],Item:{id:"minecraft:ender_chest",count:1}}
        execute if score @s jtd.ability_ender_chestToggle matches 1 at @s run setblock ~ ~ ~ ender_chest destroy
    # spend mana
        execute if score @s jtd.ability_ender_chestToggle matches 1 run scoreboard players remove @s jtd.manaBank 30
    # play sounds
        execute if score @s jtd.ability_ender_chestToggle matches 1 at @s run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 2
        execute if score @s jtd.ability_ender_chestToggle matches 1 at @s run playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 1 .5
    # add score to prevent looping
        execute if score @s jtd.ability_ender_chestToggle matches 1 run scoreboard players add @s jtd.ability_ender_chestToggle 1
    # teleport to the chest and remove marker & chest
        execute if score @s jtd.ability_ender_chestToggle matches 3 at @s run tp @s @e[type=marker,tag=jtd.enderchest_marker,sort=nearest,limit=1]
        execute if score @s jtd.ability_ender_chestToggle matches 3 at @e[type=marker,tag=jtd.enderchest_marker,sort=nearest,limit=1] run setblock ~ ~ ~ air replace
        execute if score @s jtd.ability_ender_chestToggle matches 3 at @s run kill @e[type=marker,tag=jtd.enderchest_marker]
                execute if score @s jtd.ability_ender_chestToggle matches 3 at @s run kill @e[type=ender_pearl,tag=jtd.enderchest_marker_2]
        execute if score @s jtd.ability_ender_chestToggle matches 3 run effect give @s slow_falling 1 0 true
    # play teleport sounds and particles
        execute if score @s jtd.ability_ender_chestToggle matches 3 at @s run particle minecraft:enchant ~ ~1 ~ .2 .5 .2 0 50 force @s
        execute if score @s jtd.ability_ender_chestToggle matches 3 at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 .5
        execute if score @s jtd.ability_ender_chestToggle matches 3 at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 .5
    # reset enderchest_toggle score for next use
        execute if score @s jtd.ability_ender_chestToggle matches 3.. run scoreboard players reset @s jtd.ability_ender_chestToggle