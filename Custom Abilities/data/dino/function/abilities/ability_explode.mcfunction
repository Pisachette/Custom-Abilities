# add explosion knockback resistance
attribute @s minecraft:explosion_knockback_resistance modifier add dino_explosion 1 add_value

# summon explosion
summon tnt ~ ~ ~ {fuse:0,explosion_power:6}
summon firework_rocket ~ ~1 ~ {Tags:["dino.explosion_fx"],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16711680],fade_colors:[I;0]}]}}}}

# explode fx
particle flash{color:0xff0000} ~ ~1 ~ 0 0 0 0 2

# reset explosion timer score
scoreboard players reset @s dino.explosionTimer

# set explosion check to 1
scoreboard players set @s dino.exploded 1