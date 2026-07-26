# FX
    # application sound
        playsound entity.ender_dragon.growl master @a ~ ~ ~ 1 2
    # application particles
        particle minecraft:witch ~ ~1 ~ .2 .5 .2 1 20

# apply bool score
    scoreboard players add @s ntd.dragonhead_active 1

# replace item
    item replace entity @s weapon.offhand from entity @s weapon.mainhand

    item replace entity @s weapon.mainhand from entity @s armor.head
    
    item replace entity @s armor.head with dragon_head[custom_data={ntd.dragonhead:true},glider={},item_name={"bold":true,"color":"dark_purple","text":"Dragonhead"},lore=[[{"color":"dark_gray","italic":false,"text":"Remove "},{"bold":true,"color":"dark_purple","text":"Dragonhead "},{"bold":false,"color":"dark_gray","text":"to deactivate"}],[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Sneak "},{"color":"dark_gray","text":"to fly faster"}]]]