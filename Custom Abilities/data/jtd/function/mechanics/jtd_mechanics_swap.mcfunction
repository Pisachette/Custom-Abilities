# Forward swapping
    # forward to fire
        execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] run function jtd:item_swap/jtd_swap_fire
    # forward to water
        execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdEarth:true}] run function jtd:item_swap/jtd_swap_water
    # forward to soul
        execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdEnder:true}] run function jtd:item_swap/jtd_swap_soul
    # forward to earth
        execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdFire:true}] run function jtd:item_swap/jtd_swap_earth
    # forward to air
        execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdSoul:true}] run function jtd:item_swap/jtd_swap_air
    # forward to ender
        execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdWater:true}] run function jtd:item_swap/jtd_swap_ender

# Backward swapping
    # backward to soul
        execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] run function jtd:item_swap/jtd_swap_soul
    # backward to fire
        execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdEarth:true}] run function jtd:item_swap/jtd_swap_fire
    # backward to water
        execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdEnder:true}] run function jtd:item_swap/jtd_swap_water
    # backward to air
        execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdFire:true}] run function jtd:item_swap/jtd_swap_air
    # backward to ender
        execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdSoul:true}] run function jtd:item_swap/jtd_swap_ender
    # backward to earth
        execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{jtdWater:true}] run function jtd:item_swap/jtd_swap_earth