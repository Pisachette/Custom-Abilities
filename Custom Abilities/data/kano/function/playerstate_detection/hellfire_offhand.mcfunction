# take item from mainhand, and put it back into offhand    
    item replace entity @s weapon.offhand from entity @s weapon.mainhand
# replace mainhand with hellfire
    item replace entity @s weapon.mainhand with poisonous_potato[consumable={consume_seconds:999999,animation:"bow"},custom_data={kano_hellfire:true},custom_name={"bold":true,"color":"red","italic":false,"shadow_color":-8388608,"text":"Hellfire"},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:blaze_powder",lore=[[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Interact "},{"color":"dark_gray","text":"to charge"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Swap Hands "},"to discharge"]]]

# run discharge function to execute respective operation
    function kano:hellfire_discharge