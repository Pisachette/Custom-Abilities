# damage entities hit by the beam
    execute at @e[type=marker,tag=kano.godray_marker,tag=!kano.godray_anchor] as @e[team=!kano5,type=!item,distance=..2] run damage @s 20 outside_border by @n[type=player,team=kano5]

# summon beam markers
    execute if score @s kano.msun_godray_loop matches 1 at @n[type=marker,tag=kano.godray_anchor] run summon marker ^ ^ ^1 {Tags:["kano.godray_marker_1","kano.godray_marker"]}
    execute if score @s kano.msun_godray_loop matches 2 at @n[type=marker,tag=kano.godray_anchor] run summon marker ^ ^ ^2 {Tags:["kano.godray_marker_2","kano.godray_marker"]}
    execute if score @s kano.msun_godray_loop matches 3 at @n[type=marker,tag=kano.godray_anchor] run summon marker ^ ^ ^3 {Tags:["kano.godray_marker_3","kano.godray_marker"]}
    execute if score @s kano.msun_godray_loop matches 4 at @n[type=marker,tag=kano.godray_anchor] run summon marker ^ ^ ^4 {Tags:["kano.godray_marker_4","kano.godray_marker"]}
    execute if score @s kano.msun_godray_loop matches 5 at @n[type=marker,tag=kano.godray_anchor] run summon marker ^ ^ ^5 {Tags:["kano.godray_marker_5","kano.godray_marker"]}
    execute if score @s kano.msun_godray_loop matches 6 at @n[type=marker,tag=kano.godray_anchor] run summon marker ^ ^ ^6 {Tags:["kano.godray_marker_6","kano.godray_marker"]} 
    execute if score @s kano.msun_godray_loop matches 7 at @n[type=marker,tag=kano.godray_anchor] run summon marker ^ ^ ^7 {Tags:["kano.godray_marker_7","kano.godray_marker"]} 
    execute if score @s kano.msun_godray_loop matches 8 at @n[type=marker,tag=kano.godray_anchor] run summon marker ^ ^ ^8 {Tags:["kano.godray_marker_8","kano.godray_marker"]} 
    execute if score @s kano.msun_godray_loop matches 9 at @n[type=marker,tag=kano.godray_anchor] run summon marker ^ ^ ^9 {Tags:["kano.godray_marker_9","kano.godray_marker"]}
    execute if score @s kano.msun_godray_loop matches 10 at @n[type=marker,tag=kano.godray_anchor] run summon marker ^ ^ ^10 {Tags:["kano.godray_marker_10","kano.godray_marker"]} 

# BEAM FX
    # beam particles
        execute at @e[type=marker,tag=kano.godray_marker,tag=!kano.godray_anchor] run particle end_rod ~ ~ ~ .3 .3 .3 0 10
        execute if score @s kano.msun_godray_loop matches 1 at @n[type=marker,tag=kano.godray_marker_1] run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1
    # beam sounds
        execute at @e[type=marker,tag=kano.godray_marker,tag=!kano.godray_anchor] run playsound minecraft:block.trial_spawner.spawn_item master @a ~ ~ ~ 1 2
    # activation sounds
    execute if score @s kano.msun_godray_loop matches 1 at @s run playsound item.totem.use master @a ~ ~ ~ 1 2
    execute if score @s kano.msun_godray_loop matches 1 at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 2

# continue loop
    scoreboard players add @s kano.msun_godray_loop 1

# kill marker and reset godray loop
    execute if score @s kano.msun_godray_loop matches 10.. run kill @e[type=marker,tag=kano.godray_marker]
    execute if score @s kano.msun_godray_loop matches 10.. run scoreboard players reset @s kano.msun_godray_loop