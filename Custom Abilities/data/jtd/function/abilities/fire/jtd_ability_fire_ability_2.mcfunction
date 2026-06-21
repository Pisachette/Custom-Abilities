summon marker ^ ^ ^1 {Tags:["jtd.fireball"]}
execute as @e[type=marker,tag=jtd.fireball] unless score @s jtd.ability_fire_fireballTimer matches 1.. run rotate @s facing entity @n[type=player,team=JacobTheDragon,limit=1,sort=nearest] eyes
scoreboard players remove @s jtd.manaBank 15

playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 1 .5
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1 .5