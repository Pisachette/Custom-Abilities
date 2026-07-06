# set initialization score to 1 to prevent re-initialization
    scoreboard players set ca.init kano.initialize 1

# initialize team for unique player ability use
    team add kano5
    team modify kano5 color blue

# initialize scoreboard objectives
    # detect rclick
        scoreboard objectives add kano.msun_rclick dummy
    # detect player health
        scoreboard objectives add kano.player_health health
    # detect when player kills entity/player
        scoreboard objectives add kano.player_kill_mob minecraft.custom:minecraft.mob_kills
        scoreboard objectives add kano.player_kill_player minecraft.custom:minecraft.player_kills
    # detect when player damages entity
        scoreboard objectives add kano.attack_entity minecraft.custom:minecraft.damage_dealt
     # detect player sneak
        scoreboard objectives add kano.player_sneak minecraft.custom:minecraft.sneak_time
    # detect player jump
        scoreboard objectives add kano.player_jump minecraft.custom:minecraft.jump
    # ability charge meter
        scoreboard objectives add kano.msun_charge_meter dummy
    # death check to prevent death reset function loop
        scoreboard objectives add kano.death_check dummy
    # boolean godray loop
        scoreboard objectives add kano.msun_godray_loop dummy
    # dash ability check
        scoreboard objectives add kano.dash_ready dummy
    # dash cooldown
        scoreboard objectives add kano.dash_cooldown dummy

# give player THE MIGHTY SUN
    clear @s poisonous_potato[custom_data={kano.mighty_sun:true}]
    give @s poisonous_potato[consumable={consume_seconds:999999,animation:"trident"},custom_data={kano.mighty_sun:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:sunflower",item_name={"bold":true,"color":"yellow","text":"THE MIGHTY SUN"},lore=[[{"color":"dark_gray","italic":false,"text":"Hold "},{"color":"gray","text":"Interact "},{"color":"dark_gray","text":"to charge"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Attack/Destroy "},"for ",{"color":"gold","text":"Sun Strike"}],[{"color":"dark_gray","italic":false,"text":"Press "},{"color":"gray","text":"Swap Hands "},{"color":"dark_gray","text":"for "},{"color":"gold","text":"God Ray"}]],max_stack_size=1]

say kano initialized