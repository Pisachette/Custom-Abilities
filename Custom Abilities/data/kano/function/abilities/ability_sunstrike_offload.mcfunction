# reset attack damage attribute
    attribute @s attack_damage modifier remove kano.msun_melee
    
# replace glinted item
    clear @s poisonous_potato[custom_data={kano.mighty_sun:true}]
    give @s poisonous_potato[consumable={consume_seconds:999999,animation:"trident"},custom_data={kano.mighty_sun:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:sunflower",item_name={"bold":true,"color":"yellow","text":"THE MIGHTY SUN"},lore=[[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Interact "},{"color":"dark_gray","text":"to charge"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Attack/Destroy "},"for ",{"color":"gold","text":"Sun Strike"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Swap Hands "},{"color":"dark_gray","text":"for "},{"color":"gold","text":"God Ray"}]],max_stack_size=1]

# play hit sound
    playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 2
    playsound minecraft:block.trial_spawner.ominous_activate master @a ~ ~ ~ 1 .5
    playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 2

# hit particles
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 .5 30
    particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1

# reset charge
    scoreboard players reset @s kano.msun_charge_meter