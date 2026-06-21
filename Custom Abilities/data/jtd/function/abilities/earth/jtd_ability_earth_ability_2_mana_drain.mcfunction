
# when the player stops holding right-click, enable them to activate ability 2 again
    execute as @a[team=JacobTheDragon] unless score @s jtd.item_spamProtection matches 1.. run scoreboard players reset @s jtd.ability_earth_2_scoreReset
# reset the ability when the player runs out of mana
    execute as @a[team=JacobTheDragon] if score @s jtd.manaBank matches 0 if score @s jtd.earth_rClick matches 1.. if score @s jtd.sneak matches 1.. run scoreboard players set @s jtd.ability_earth_2_scoreReset 1
# remove mana when ability 2 is active
    execute as @a[team=JacobTheDragon] if score @s jtd.ability_earth_2 matches 1 run scoreboard players add @s jtd.ability_earth_2_manaDrain 1
# remove mana
    execute as @a[team=JacobTheDragon] if score @s jtd.ability_earth_2_manaDrain matches 1 unless score @s jtd.manaBank matches 0 run scoreboard players remove @s jtd.manaBank 1
# loop mana drain
    execute as @a[team=JacobTheDragon] if score @s jtd.ability_earth_2_manaDrain matches 5 run scoreboard players reset @s jtd.ability_earth_2_manaDrain
# reset mana drain score when statue isnt active
    execute as @a[team=JacobTheDragon] unless score @s jtd.ability_earth_2 matches 1 run scoreboard players reset @s jtd.ability_earth_2_manaDrain