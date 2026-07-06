# take item from mainhand, and put it back into offhand
    item replace entity @s weapon.offhand from entity @s weapon.mainhand
# replace mainhand with hellfire
    item replace entity @s weapon.mainhand with poisonous_potato[consumable={consume_seconds:999999,animation:"trident"},custom_data={kano.mighty_sun:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:sunflower",item_name={"bold":true,"color":"yellow","text":"THE MIGHTY SUN"},lore=[[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Interact "},{"color":"dark_gray","text":"to charge"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Attack/Destroy "},"for ",{"color":"gold","text":"Sun Strike"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Swap Hands "},{"color":"dark_gray","text":"for "},{"color":"gold","text":"God Ray"}]],max_stack_size=1]

# reset attack damage attribute
    attribute @s attack_damage modifier remove kano.msun_melee

# execute beam attack looping function
    execute if score @s kano.msun_charge_meter matches 61 run scoreboard players set @s kano.msun_godray_loop 1

# MARKER
    # summon beam anchor marker
        execute if score @s kano.msun_charge_meter matches 61 at @s run summon marker ~ ~ ~ {Tags:["kano.godray_anchor","kano.godray_marker"]}
    # position beam anchor marker
        execute if score @s kano.msun_charge_meter matches 61 at @s run tp @n[type=marker,tag=kano.godray_anchor] ~ ~1.625 ~ ~ ~

# reset charge
    scoreboard players reset @s kano.msun_charge_meter