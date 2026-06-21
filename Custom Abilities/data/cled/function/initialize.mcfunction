# add team Cledward
    team add Cledward
    team modify Cledward color green
    team modify Cledward friendlyFire false

# provide players of team cledward with the cledball
    execute as @a[team=Cledward] run give @s poisonous_potato[consumable={consume_seconds:999999,animation:"bow"},custom_data={cled_cledball:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:slime_ball",item_name={"bold":true,"color":"green","italic":false,"text":"Cledball"},lore=[[{"color":"gray","italic":false,"text":"Interact "},{"color":"dark_gray","text":"to shoot"}],[{"color":"gray","italic":false,"text":"Swap Hands "},{"color":"dark_gray","text":"to teleport to nearest cledball"}],[{"color":"gray","italic":false,"text":"Sneak "},{"color":"dark_gray","italic":false,"text":"for "},{"bold":true,"color":"red","text":"Killball"}]]]

# add scoreboard objectives for operation of ability
    # sneaking
        scoreboard objectives add cled.sneak minecraft.custom:minecraft.sneak_time
    # right clicking
        scoreboard objectives add cled.rclick_cledball dummy
        scoreboard objectives add cled.rclick_killball dummy
    # cledball shoot charge timer
        scoreboard objectives add cled.charge_cledball dummy
    # killball purify charge timer
        scoreboard objectives add cled.charge_killball dummy
    # cledball projectile lifetime
        scoreboard objectives add cled.cledball_lifetime dummy
    # player health
        scoreboard objectives add cled.health health
    # player death check
        scoreboard objectives add cled.death_check dummy

# reload world
    reload