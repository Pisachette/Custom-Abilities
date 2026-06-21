execute as @e[distance=..6,type=!item_display,team=!JacobTheDragon] run damage @s 3 fireball by @n[type=player,team=JacobTheDragon,limit=1,sort=nearest]
execute as @e[distance=..6,type=!item_display,team=!JacobTheDragon] run data merge entity @s {Fire:80}
particle flame ^ ^ ^7 0 0 0 0 1
particle flame ^ ^ ^-7 0 0 0 0 1
particle flame ^7 ^ ^ 0 0 0 0 1
particle flame ^-7 ^ ^ 0 0 0 0 1
particle small_flame ~ ~ ~ 2.8 0 2.8 0 5
playsound minecraft:block.blastfurnace.fire_crackle master @a ~ ~ ~ 1 2