# fireball trajectory timer
execute as @e[type=marker,tag=jtd.fireball] run scoreboard players add @s jtd.ability_fire_fireballTimer 1

# fireball display
execute if entity @e[type=ender_pearl,tag=jtd.fireball] run kill @e[type=ender_pearl,tag=jtd.fireball]
execute at @e[type=marker,tag=jtd.fireball] run summon ender_pearl ~ ~ ~ {Tags:["jtd.fireball"],Item:{id:"minecraft:fire_charge",count:1}}

# travel across X
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 1..4 at @s run tp @s ^ ^ ^-1
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 5..8 at @s run tp @s ^ ^ ^-.9
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 9..12 at @s run tp @s ^ ^ ^-.8
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 13..16 at @s run tp @s ^ ^ ^-.7
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 17..20 at @s run tp @s ^ ^ ^-.6
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 21..24 at @s run tp @s ^ ^ ^-.5
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 25..28 at @s run tp @s ^ ^ ^-.4
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 29..32 at @s run tp @s ^ ^ ^-.3
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 33..36 at @s run tp @s ^ ^ ^-.2
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 37.. at @s run tp @s ^ ^ ^-.1
# travel across Y
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 1..4 at @s run tp @s ~ ~-.1 ~
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 5..8 at @s run tp @s ~ ~-.2 ~
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 9..12 at @s run tp @s ~ ~-.3 ~
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 13..16 at @s run tp @s ~ ~-.4 ~
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 17..20 at @s run tp @s ~ ~-.5 ~
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 21..24 at @s run tp @s ~ ~-.6 ~
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 25..28 at @s run tp @s ~ ~-.7 ~
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 29..32 at @s run tp @s ~ ~-.8 ~
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 33..36 at @s run tp @s ~ ~-.9 ~
    execute as @e[type=marker,tag=jtd.fireball] if score @s jtd.ability_fire_fireballTimer matches 37.. at @s run tp @s ~ ~-1 ~

# fire trail particles
    execute at @e[type=marker,tag=jtd.fireball] run particle minecraft:small_flame ~ ~ ~ 0 0 0 .05 1