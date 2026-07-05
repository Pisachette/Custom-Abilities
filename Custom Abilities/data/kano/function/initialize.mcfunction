# initialize team for unique player ability use
    team add kano5
    team modify kano5 color blue

# initialize the bossbar
    bossbar add kano.hellfire {"bold":true,"color":"red","text":"Hellfire"}
    bossbar set kano.hellfire max 190
    bossbar set kano.hellfire color red
    bossbar set kano.hellfire style progress
    bossbar set minecraft:kano.hellfire players @a[team=kano5]

# initialize scoreboard objectives for playerstate and item use detection
    # right-click detection
        scoreboard objectives add kano.rclick_hellfire dummy
    # health tracking
        scoreboard objectives add kano.health health
    # death check
        scoreboard objectives add kano.death_check dummy
    # hellfire charge timer
        scoreboard objectives add kano.charge_hellfire dummy

# give player hellfire
    execute as @a[team=kano5] run give @s poisonous_potato[consumable={consume_seconds:999999,animation:"bow"},custom_data={kano_hellfire:true},custom_name={"bold":true,"color":"red","italic":false,"shadow_color":-8388608,"text":"Hellfire"},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:blaze_powder",lore=[[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Interact "},{"color":"dark_gray","text":"to charge"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Swap Hands "},"to discharge"]]]

reload