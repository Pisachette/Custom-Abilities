# CHANGE MANABAR COLOR BASED ON MANA COUNT

    # ability 1
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 6.. run bossbar set jtd.manabank color green
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..5 run bossbar set jtd.manabank color red
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 6.. run title @s actionbar [{"bold":true,"color":"green","text":"♦ "},{"bold":false,"color":"green",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"green","text":" ♦"}]
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..5 run title @s actionbar [{"bold":true,"color":"red","text":"♦ "},{"bold":false,"color":"red",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"red","text":" ♦"}]
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 if score @s jtd.manaBank matches ..5 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5

    # ability 2
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 15.. run bossbar set jtd.manabank color green
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..14 run bossbar set jtd.manabank color red
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 15.. run title @s actionbar [{"bold":true,"color":"green","text":"♦ "},{"bold":false,"color":"green",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"green","text":" ♦"}]
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..14 run title @s actionbar [{"bold":true,"color":"red","text":"♦ "},{"bold":false,"color":"red",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"red","text":" ♦"}]
        execute if score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 if score @s jtd.manaBank matches ..14 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5

# ABILITY 1

    # execute the ability at the players eyes upon meeting cast criteria
        execute if score @s jtd.item_spamProtection matches 1 unless score @s jtd.sneak matches 1.. unless score @s jtd.manaBank matches ..5 at @s anchored eyes run function jtd:abilities/fire/jtd_ability_fire_ability_1


# ABILITY 2

    # execute the ability at the players eyes upon meeting cast criteria
        execute if score @s jtd.item_spamProtection matches 1 if score @s jtd.sneak matches 1.. unless score @s jtd.manaBank matches ..14 at @s anchored eyes run function jtd:abilities/fire/jtd_ability_fire_ability_2

