# CHANGE MANABAR COLOR BASED ON MANA COUNT

    # ability 1
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 10.. run bossbar set jtd.manabank color green
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..9 run bossbar set jtd.manabank color red
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 10.. run title @s actionbar [{"bold":true,"color":"green","text":"♦ "},{"bold":false,"color":"green",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"green","text":" ♦"}]
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..9 run title @s actionbar [{"bold":true,"color":"red","text":"♦ "},{"bold":false,"color":"red",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"red","text":" ♦"}]
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 if score @s jtd.manaBank matches ..9 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5

    # ability 2
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 30.. run bossbar set jtd.manabank color green
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..29 run bossbar set jtd.manabank color red
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 30.. run title @s actionbar [{"bold":true,"color":"green","text":"♦ "},{"bold":false,"color":"green",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"green","text":" ♦"}]
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..29 run title @s actionbar [{"bold":true,"color":"red","text":"♦ "},{"bold":false,"color":"red",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"red","text":" ♦"}]
        execute if score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 if score @s jtd.manaBank matches ..29 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5


# ABILITY 1

    # play a sound if the player tries to activate while at full health
        execute unless score @s jtd.manaBank matches ..9 if score @s jtd.health matches 20 unless score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5
    # add score to the charge
        execute if score @s jtd.manaBank matches 10.. unless score @s jtd.health matches 20.. unless score @s jtd.sneak matches 1.. run scoreboard players add @s jtd.ability_water_charge 1
    # give initial charge effects and sounds
        execute if score @s jtd.ability_water_charge matches 1 at @s run effect give @s glowing 1 0 true
        execute if score @s jtd.ability_water_charge matches 1 at @s run stopsound @a master block.conduit.deactivate
        execute if score @s jtd.ability_water_charge matches 1 at @s run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 1 2
    # heart particles and sound when healed
        execute if score @s jtd.ability_water_charge matches 20 unless score @s jtd.sneak matches 1.. at @s run particle minecraft:heart ~ ~2.2 ~ 0 0 0 0 1
        execute if score @s jtd.ability_water_charge matches 20 if score @s jtd.sneak matches 1.. at @s run particle minecraft:heart ~ ~1.8 ~ 0 0 0 0 1
        execute if score @s jtd.ability_water_charge matches 20 at @s run playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 1 2
    # instant health effect
        execute if score @s jtd.ability_water_charge matches 20 run effect give @s instant_health 1 0 true
    # spend mana and reset charge score
        execute if score @s jtd.ability_water_charge matches 20 run scoreboard players remove @s jtd.manaBank 10
        execute if score @s jtd.ability_water_charge matches 20 run scoreboard players reset @s jtd.ability_water_charge


# ABILITY 2

    # play sound if the player tries to double-activate
        execute unless score @s jtd.manaBank matches ..29 if score @s jtd.ability_water_manaRegen matches 1 if score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5
    # play sound on activation
        execute unless score @s jtd.ability_water_manaRegen matches 1 if score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 unless score @s jtd.manaBank matches ..29 at @s run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 2
        execute unless score @s jtd.ability_water_manaRegen matches 1 if score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 unless score @s jtd.manaBank matches ..29 at @s run playsound minecraft:block.bubble_column.whirlpool_inside master @a ~ ~ ~ 1 .5
    # enable double mana speed check
        execute unless score @s jtd.ability_water_manaRegen matches 1 if score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 unless score @s jtd.manaBank matches ..29 run scoreboard players set @s jtd.ability_water_manaRegen 1
    # spend mana
        execute unless score @s jtd.ability_water_manaRegenDuration matches 1.. if score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 unless score @s jtd.manaBank matches ..29 run scoreboard players remove @s jtd.manaBank 30