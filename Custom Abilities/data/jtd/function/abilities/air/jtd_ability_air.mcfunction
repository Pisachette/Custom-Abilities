# CHANGE MANABAR COLOR BASED ON MANA COUNT

    # ability 2
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 30.. run bossbar set jtd.manabank color green
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..29 run bossbar set jtd.manabank color red
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches 30.. run title @s actionbar [{"bold":true,"color":"green","text":"♦ "},{"bold":false,"color":"green",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"green","text":" ♦"}]
        execute if score @s jtd.sneak matches 1.. if score @s jtd.manaBank matches ..29 run title @s actionbar [{"bold":true,"color":"red","text":"♦ "},{"bold":false,"color":"red",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"red","text":" ♦"}]
        execute if score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 if score @s jtd.manaBank matches ..29 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5

# ABILITY 1

    # add toggle score
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 run scoreboard players add @s jtd.ability_air_windborneToggle 1
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.item_spamProtection matches 1 run scoreboard players reset @s jtd.ability_air_windborneReset
    # on sound
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.ability_air_windborneToggle matches 1 if score @s jtd.item_spamProtection matches 1 at @s run playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 1 1
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.ability_air_windborneToggle matches 1 if score @s jtd.item_spamProtection matches 1 at @s run playsound minecraft:block.vault.activate master @a ~ ~ ~ 1 2
    # subtitle
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.ability_air_windborneToggle matches 1 if score @s jtd.item_spamProtection matches 1 run title @s times 0 99d 0t
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.ability_air_windborneToggle matches 2 if score @s jtd.item_spamProtection matches 1 run title @s reset
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.ability_air_windborneToggle matches 1 if score @s jtd.item_spamProtection matches 1 run title @s title {"bold":true,"color":"white","italic":false,"text":" "}
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.ability_air_windborneToggle matches 1 if score @s jtd.item_spamProtection matches 1 run title @s subtitle {"bold":true,"color":"white","italic":true,"text":"» Windborne »"}
    # off sound
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.ability_air_windborneToggle matches 2 at @s run playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 1 .5
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.ability_air_windborneToggle matches 2 at @s run playsound minecraft:block.vault.activate master @a ~ ~ ~ 1 .5
    # score reset
        execute unless score @s jtd.sneak matches 1.. if score @s jtd.ability_air_windborneToggle matches 2 run scoreboard players reset @s jtd.ability_air_windborneToggle


# ABILITY 2

    # give player the ability check
        execute at @s if block ~ ~-1 ~ water if score @s jtd.sneak matches 1.. unless score @s jtd.manaBank matches ..29 if score @s jtd.item_spamProtection matches 1 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 .5
        execute at @s if block ~ ~-1 ~ lava if score @s jtd.sneak matches 1.. unless score @s jtd.manaBank matches ..29 if score @s jtd.item_spamProtection matches 1 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 .5
        execute at @s if block ~ ~-1 ~ #air if score @s jtd.sneak matches 1.. unless score @s jtd.manaBank matches ..29 if score @s jtd.item_spamProtection matches 1 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 .5
        execute at @s unless block ~ ~-1 ~ #air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava if score @s jtd.sneak matches 1.. unless score @s jtd.manaBank matches ..29 if score @s jtd.item_spamProtection matches 1 run scoreboard players set @s jtd.ability_air_ability2 1
    # summon smoke bomb marker entity
        execute if score @s jtd.ability_air_ability2 matches 1 at @s run summon marker ~ ~ ~ {Tags:["jtd.ability2_marker"]}
    # give player levitation, and show particles
        execute if score @s jtd.ability_air_ability2 matches 1 run effect give @s levitation 1 30 true
        execute if score @s jtd.ability_air_ability2 matches 1 at @s run particle gust_emitter_large ~ ~.5 ~ 0 0 0 0 1
    # play activation sounds
        execute if score @s jtd.ability_air_ability2 matches 1 at @s run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 .5
        execute if score @s jtd.ability_air_ability2 matches 1 at @s run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 .5
    # spend mana
        execute if score @s jtd.ability_air_ability2 matches 1 run scoreboard players remove @s jtd.manaBank 30
    
    # reset score for re-use
        execute if score @s jtd.ability_air_ability2 matches 1 run scoreboard players reset @s jtd.ability_air_ability2
