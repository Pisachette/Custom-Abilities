# reset rclick
    scoreboard players reset @s kano.msun_rclick
# reset charge meter
    scoreboard players reset @s kano.msun_charge_meter

# remove msun item charge glint
    clear @s poisonous_potato[custom_data={kano.mighty_sun:true}]
    give @s poisonous_potato[consumable={consume_seconds:999999,animation:"trident"},custom_data={kano.mighty_sun:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:sunflower",item_name={"bold":true,"color":"yellow","text":"THE MIGHTY SUN"},lore=[[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Interact "},{"color":"dark_gray","text":"to charge"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Attack/Destroy "},"for ",{"color":"gold","text":"Sun Strike"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Swap Hands "},{"color":"dark_gray","text":"for "},{"color":"gold","text":"God Ray"}]],max_stack_size=1]

# remove attributes
    attribute @s attack_damage modifier remove kano.msun_melee
    attribute @s attack_knockback modifier remove kano.msun_knockback
    attribute @s movement_speed modifier remove kano.movespeed
    attribute @s jump_strength modifier remove kano.jump

# set death check to 1 to prevent function looping
    scoreboard players set @s kano.death_check 1