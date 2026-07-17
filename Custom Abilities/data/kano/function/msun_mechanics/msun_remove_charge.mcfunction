# remove attributes
    attribute @s attack_damage modifier remove kano.msun_melee
    attribute @s attack_knockback modifier remove kano.msun_knockback
# replace charged item
    clear @s poisonous_potato[custom_data={kano.mighty_sun:true}]
    give @s poisonous_potato[consumable={consume_seconds:999999,animation:"trident"},custom_data={kano.mighty_sun:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:sunflower",item_name={"bold":true,"color":"yellow","text":"THE MIGHTY SUN"},lore=[[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Interact "},{"color":"dark_gray","text":"to charge"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Attack/Destroy "},"for ",{"color":"gold","text":"Sun Strike"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Swap Hands "},{"color":"dark_gray","text":"for "},{"color":"gold","text":"God Ray"}]],max_stack_size=1]
# play deactivation sounds
    playsound block.respawn_anchor.deplete master @a ~ ~ ~ 1 2
    playsound block.beacon.deactivate master @a ~ ~ ~ 1 .5
# reset charge
    scoreboard players reset @s kano.msun_charge_meter