# CHANGE MANABAR COLOR BASED ON MANA COUNT

    # ability 1
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 10.. run bossbar set jtd.manabank color green
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..9 run bossbar set jtd.manabank color red
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 10.. run title @s actionbar [{"bold":true,"color":"green","text":"♦ "},{"bold":false,"color":"green",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"green","text":" ♦"}]
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..9 run title @s actionbar [{"bold":true,"color":"red","text":"♦ "},{"bold":false,"color":"red",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"red","text":" ♦"}]
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 if score @s jtd.manaBank matches ..9 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5

    # ability 2
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 16.. run bossbar set jtd.manabank color green
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..15 run bossbar set jtd.manabank color red
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 16.. run title @s actionbar [{"bold":true,"color":"green","text":"♦ "},{"bold":false,"color":"green",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"green","text":" ♦"}]
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..15 run title @s actionbar [{"bold":true,"color":"red","text":"♦ "},{"bold":false,"color":"red",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"red","text":" ♦"}]
        execute if score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 if score @s jtd.manaBank matches ..15 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5


# ABILITY 1
    execute if score @s jtd.item_spamProtection matches 1 unless score @s jtd.sneak matches 1.. unless score @s jtd.manaBank matches ..9 at @s run function jtd:abilities/soul/jtd_ability_soul_ability_1

# ABILITY 2
    execute if score @s jtd.item_spamProtection matches 1 if score @s jtd.sneak matches 1.. unless score @s jtd.manaBank matches ..15 at @s run function jtd:abilities/soul/jtd_ability_soul_ability_2