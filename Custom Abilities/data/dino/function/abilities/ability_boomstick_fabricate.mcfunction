# play fabrication sounds
    execute unless items entity @s weapon.offhand poisonous_potato[custom_data={dino.boomstick:true}] at @s run playsound minecraft:block.trial_spawner.spawn_item master @a ~ ~ ~ 1 .5
    execute unless items entity @s weapon.offhand poisonous_potato[custom_data={dino.boomstick:true}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 .5

# play fabrication denial sound
    execute if items entity @s weapon.offhand poisonous_potato[custom_data={dino.boomstick:true}] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 .5

# give player bomb
    execute unless items entity @s weapon.offhand poisonous_potato[custom_data={dino.boomstick:true}] run item replace entity @s weapon.offhand with poisonous_potato[consumable={consume_seconds:999999,animation:"block"},custom_data={dino.boomstick:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:blaze_rod",item_name={"bold":true,"color":"red","text":"Boom Stick"},lore=[[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","italic":false,"text":"Interact "},{"color":"dark_gray","text":"to use"}]]] 1

    item replace entity @s weapon.mainhand from entity @s weapon.offhand
    item replace entity @s weapon.offhand with air

# reset title and actionbar
    title @s actionbar {"text":""}

# reset charge
    scoreboard players reset @s dino.explosionTimer