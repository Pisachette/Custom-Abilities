# set initialization score to 1 to prevent re-initialization
    scoreboard players set ca.init ntd.initialize 1


# give player required item
    clear @s poisonous_potato[consumable={consume_seconds:999999,animation:"bow"},custom_data={ntd.dragonheart:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:ender_dragon_spawn_egg",item_name={"bold":true,"color":"dark_purple","text":"Dragonheart"},lore=[[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Swap Hands "},"to toggle flight"],[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Interact "},"for ",{"bold":true,"color":"dark_purple","text":"Dragon's Breath"}],[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Sneak "},{"color":"dark_gray","text":"while flying for speed boost"}]]]
    give @s poisonous_potato[consumable={consume_seconds:999999,animation:"bow"},custom_data={ntd.dragonheart:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:ender_dragon_spawn_egg",item_name={"bold":true,"color":"dark_purple","text":"Dragonheart"},lore=[[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Swap Hands "},"to toggle flight"],[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Interact "},"for ",{"bold":true,"color":"dark_purple","text":"Dragon's Breath"}],[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Sneak "},{"color":"dark_gray","text":"while flying for speed boost"}]]] 1


# initialize scoreboard objectives for ability operation
    # detect player flight
        scoreboard objectives add ntd.fly minecraft.custom:minecraft.aviate_one_cm
    # detect player sneaking
        scoreboard objectives add ntd.sneak minecraft.custom:minecraft.sneak_time
    # detect player jumping
        scoreboard objectives add ntd.jump minecraft.custom:minecraft.jump
    # track player health
        scoreboard objectives add ntd.health health
    # death check to prevent function looping
        scoreboard objectives add ntd.death_check dummy
    # sfx check to prevent sfx looping
        scoreboard objectives add ntd.sfx_check dummy
    # flightspeed ability bool
        scoreboard objectives add ntd.flightspeed_applied dummy
    # dragonbreath ability bool
        scoreboard objectives add ntd.dragonbreath_active dummy
    # dragonhead ability bool
        scoreboard objectives add ntd.dragonhead_active dummy
    # dragonbreath ability fuel
        scoreboard objectives add ntd.dragonbreath_fuel dummy
    # dragonbreath bossbar bool
        scoreboard objectives add ntd.dragonbreath_bossbar_active dummy
    # player rclick detection
        scoreboard objectives add ntd.rclick_dragonheart dummy
    # takeoff ability charge
        scoreboard objectives add ntd.takeoff_charge dummy


# initialize team
    team add NicTheDragon
    team modify NicTheDragon color dark_purple


# initialize bossbar
    bossbar add ntd.dragon_breath {"bold":true,"color":"dark_purple","text":"Dragon's Breath"}
    bossbar set ntd.dragon_breath color purple
    bossbar set ntd.dragon_breath max 200
    bossbar set ntd.dragon_breath style notched_10
    bossbar set ntd.dragon_breath players @a[team=NicTheDragon]


say ntd initialized