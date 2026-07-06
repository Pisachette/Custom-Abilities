# remove charge if the player swaps items
    execute as @a[team=kano5] if score @s kano.msun_charge_meter matches 61 unless items entity @s weapon.mainhand poisonous_potato[custom_data={kano.mighty_sun:true}] at @s run function kano:msun_mechanics/msun_remove_charge
# If the player stops at 60 charge, set it to 61 to prevent FX loops that activate at 60
    execute as @a[team=kano5] if score @s kano.msun_charge_meter matches 60 run scoreboard players set @s kano.msun_charge_meter 61
# reset mob/player kill scores for re-use
    execute as @a[team=kano5] if score @s kano.player_kill_mob matches 1.. run scoreboard players reset @s kano.player_kill_mob
    execute as @a[team=kano5] if score @s kano.player_kill_player matches 1.. run scoreboard players reset @s kano.player_kill_player
# make player sneak boolean
    execute as @a[team=kano5] if score @s kano.player_sneak matches 1.. run scoreboard players reset @s kano.player_sneak
# make player jump boolean
    execute as @a[team=kano5] if score @s kano.player_jump matches 1.. run scoreboard players reset @s kano.player_jump
# make player attack boolean
    execute as @a[team=kano5] if score @s kano.attack_entity matches 1.. run scoreboard players reset @s kano.attack_entity
# reset charge when player stops rclicking
    execute as @a[team=kano5] unless score @s kano.msun_rclick matches 1.. if score @s kano.msun_charge_meter matches 1..59 run scoreboard players reset @s kano.msun_charge_meter
# make rclick boolean
    execute as @a[team=kano5] if score @s kano.msun_rclick matches 1.. run scoreboard players reset @s kano.msun_rclick