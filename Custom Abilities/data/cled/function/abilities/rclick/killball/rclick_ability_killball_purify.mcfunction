# activation sound for player
    playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 2

# zombie death sounds
    execute at @e[type=#zombies,team=Cledward] run playsound minecraft:entity.allay.death master @a ~ ~ ~ 1 .5

# zombie death particles
    execute at @e[type=#zombies,team=Cledward] run particle trial_spawner_detection ~ ~ ~ .2 .5 .2 0 50

# poison cloud
    execute at @e[type=#zombies,team=Cledward] run summon area_effect_cloud ~ ~ ~ {Radius:5f,Duration:200,potion_contents:{custom_color:65280},Tags:["cled.poison_cloud"],CustomName:{"bold":true,"color":"green","text":"Poison Cloud"}}

# kill zombies
    kill @e[type=#zombies,team=Cledward]