# summon cledball
    summon item_display ^ ^ ^1 {CustomNameVisible:0b,billboard:"center",Tags:["cled.cledball_projectile"],CustomName:{"bold":true,"color":"green","text":"Cledball"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.5f,.5f,.5f]},item:{id:"minecraft:slime_ball",count:1}}

# rotate cledball to face shooter
        execute as @n[type=item_display,tag=cled.cledball_projectile] at @n[type=player,limit=1,team=Cledward] rotated as @n[type=player,team=Cledward,limit=1] run tp @s ~ ~1.625 ~ ~ ~

# play shoot sound
playsound minecraft:entity.egg.throw master @a ~ ~ ~ 1 1.5
playsound minecraft:block.honey_block.hit master @a ~ ~ ~ 1 1

# reset charge for re-use
    scoreboard players reset @s cled.charge_cledball