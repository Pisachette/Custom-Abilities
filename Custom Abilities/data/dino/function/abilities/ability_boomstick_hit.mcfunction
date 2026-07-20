# explode
    summon tnt ~ ~ ~ {fuse:0,explosion_power:2}
    summon firework_rocket ~ ~ ~ {Tags:["dino.explosion_fx"],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16711680],fade_colors:[I;0]}]}}}}

# remove boomstick entities
    kill @n[type=item_display,tag=dino.boomstick_projectile]
    kill @s