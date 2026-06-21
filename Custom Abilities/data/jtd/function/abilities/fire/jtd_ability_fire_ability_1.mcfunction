# summon 6 entities in front of the player with flame particles
    summon area_effect_cloud ^ ^ ^1 {custom_particle:{type:"flame"},Radius:1f,Duration:0,Tags:["jtd.fire_1","jtd.fire"]}
    summon area_effect_cloud ^ ^ ^2 {custom_particle:{type:"flame"},Radius:1f,Duration:0,Tags:["jtd.fire_2","jtd.fire"]}
    summon area_effect_cloud ^ ^ ^3 {custom_particle:{type:"flame"},Radius:1f,Duration:0,Tags:["jtd.fire_3","jtd.fire"]}
    summon area_effect_cloud ^ ^ ^4 {custom_particle:{type:"flame"},Radius:1f,Duration:0,Tags:["jtd.fire_4","jtd.fire"]}
    summon area_effect_cloud ^ ^ ^5 {custom_particle:{type:"flame"},Radius:1f,Duration:0,Tags:["jtd.fire_5","jtd.fire"]}
    summon area_effect_cloud ^ ^ ^6 {custom_particle:{type:"flame"},Radius:1f,Duration:0,Tags:["jtd.fire_6","jtd.fire"]}

# play sounds
    playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1 .5
    #playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 .5
    playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 2
    playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 2

# spend mana
    scoreboard players remove @s jtd.manaBank 6