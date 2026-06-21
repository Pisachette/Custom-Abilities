# summon firework when you die
execute unless score @s dino.jump matches 1 unless score @s dino.explosionTimer matches 60..61 unless score @s dino.sneak matches 1.. run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16711680],fade_colors:[I;0]}]}}}}

# remove explosion knockback resistance
attribute @s explosion_knockback_resistance modifier remove dino_explosion

# reset explosion check
scoreboard players reset @s dino.exploded

# set death check to 1 to prevent looping
scoreboard players set @s dino.deathCheck 1

