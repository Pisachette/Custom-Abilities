#tag @e[tag=!sapper,tag=!sapperActivate,distance=..2,type=!item] add explosion
#tag @n[tag=sapper,tag=!sapperActivate] add explosionMarker
#playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 2
#playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 1 .5
#summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[I;255],fade_colors:[I;16755200]}]}}}}