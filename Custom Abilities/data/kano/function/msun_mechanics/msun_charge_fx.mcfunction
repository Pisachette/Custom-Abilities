# SOUNDS
    # de-charge
        execute if score @s kano.msun_charge_meter matches 1..59 unless score @s kano.msun_rclick matches 1.. run stopsound @a master block.trial_spawner.about_to_spawn_item
        execute if score @s kano.msun_charge_meter matches 1..59 unless score @s kano.msun_rclick matches 1.. run stopsound @a master block.respawn_anchor.charge
        execute if score @s kano.msun_charge_meter matches 1..59 unless score @s kano.msun_rclick matches 1.. run stopsound @a master entity.warden.sonic_charge
    
        execute if score @s kano.msun_charge_meter matches 1..59 unless score @s kano.msun_rclick matches 1.. run playsound block.respawn_anchor.deplete master @a ~ ~ ~ 1 2
        execute if score @s kano.msun_charge_meter matches 1..59 unless score @s kano.msun_rclick matches 1.. run playsound block.beacon.deactivate master @a ~ ~ ~ 1 .5

    # charge
        execute if score @s kano.msun_charge_meter matches 1 run stopsound @a master minecraft:block.respawn_anchor.deplete
        execute if score @s kano.msun_charge_meter matches 1 run stopsound @a master block.beacon.deactivate

        execute if score @s kano.msun_charge_meter matches 1 run playsound block.trial_spawner.about_to_spawn_item master @a ~ ~ ~ 1 .6
        execute if score @s kano.msun_charge_meter matches 1 run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 .5
        execute if score @s kano.msun_charge_meter matches 1 run playsound entity.warden.sonic_charge master @a ~ ~ ~ 1 .5
        execute if score @s kano.msun_charge_meter matches 60 run playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 1 2

# PARTICLES
    # kill particle marker when not in use
        execute if entity @e[type=marker,tag=kano.chargefx_marker] unless score @s kano.msun_rclick matches 1 run kill @e[type=marker,tag=kano.chargefx_marker]
    # spawn particle marker when in use
        execute unless entity @e[type=marker,tag=kano.chargefx_marker] if score @s kano.msun_rclick matches 1 run summon marker ~ ~ ~ {Tags:["kano.chargefx_marker"]}
    # tp fx marker to proper position
        tp @n[type=marker,tag=kano.chargefx_marker] ~ ~ ~
    # rotate marker
        execute as @n[type=marker,tag=kano.chargefx_marker] at @s run tp @s ~ ~ ~ ~8 ~

    # per-charge level particles
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 1..9 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^2 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 1..9 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^-2 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 1..9 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^2 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 1..9 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^-2 0 0 0 0 1

        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 10..19 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^1.8 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 10..19 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^-1.8 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 10..19 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^1.8 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 10..19 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^-1.8 0 0 0 0 1

        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 20..29 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^1.6 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 20..29 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^-1.6 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 20..29 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^1.6 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 20..29 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^-1.6 0 0 0 0 1

        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 30..39 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^1.4 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 30..39 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^-1.4 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 30..39 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^1.4 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 30..39 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^-1.4 0 0 0 0 1

        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 40..49 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^1.2 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 40..49 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^-1.2 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 40..49 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^1.2 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 40..49 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^-1.2 0 0 0 0 1

        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 50..59 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^1 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 50..59 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^-1 ^ ^ 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 50..59 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^1 0 0 0 0 1
        execute unless score @s kano.msun_charge_meter matches 60.. if score @s kano.msun_charge_meter matches 50..59 at @n[type=marker,tag=kano.chargefx_marker] run particle instant_effect ^ ^ ^-1 0 0 0 0 1

        execute if score @s kano.msun_charge_meter matches 60 run particle end_rod ~ ~1 ~ 0 0 0 .1 20

        execute if score @s kano.msun_charge_meter matches 61 run particle wax_on ~ ~1 ~ 0 0 0 0 1