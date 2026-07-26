# removal sound
    playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 1 .5

# reset bool score
    scoreboard players reset @s ntd.dragonhead_active

# return item
    give @s poisonous_potato[consumable={consume_seconds:999999,animation:"bow"},custom_data={ntd.dragonheart:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:ender_dragon_spawn_egg",item_name={"bold":true,"color":"dark_purple","text":"Dragonheart"},lore=[[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Swap Hands "},"to toggle flight"],[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Interact "},"for ",{"bold":true,"color":"dark_purple","text":"Dragon's Breath"}],[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Sneak "},{"color":"dark_gray","text":"while flying for speed boost"}]]] 1

# remove dragon head
    clear @s dragon_head[custom_data={ntd.dragonhead:true}]