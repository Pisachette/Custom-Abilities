# add mana passively
execute as @a[team=JacobTheDragon] unless score @s jtd.manaBank matches 60.. run scoreboard players add @s jtd.manaRegen 1

# cap mana at 60
execute as @a[team=JacobTheDragon] if score @s jtd.manaBank matches 61.. run scoreboard players set @s jtd.manaBank 60

# add 1 mana every 20 ticks
execute as @a[team=JacobTheDragon] if score @s jtd.manaRegen matches 20 run scoreboard players add @s jtd.manaBank 1

# mana cooldown timer reset
execute as @a[team=JacobTheDragon] if score @s jtd.manaRegen matches 20.. run scoreboard players set @s jtd.manaRegen 0

# store the result of the mana bank score in the bossbar
execute as @a[team=JacobTheDragon] store result bossbar jtd.manabank value run scoreboard players get @s jtd.manaBank

# actionbar mana display
execute as @a[team=JacobTheDragon] run title @s actionbar [{"bold":true,"color":"green","text":"♦ "},{"bold":false,"color":"green",score:{name:"@s",objective:"jtd.manaBank"}},{"bold":true,"color":"green","text":" ♦"}]