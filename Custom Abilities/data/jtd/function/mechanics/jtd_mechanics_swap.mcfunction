# Forward swapping
execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdAir:true}] run function jtd:item_swap/jtd_swap_fire
execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdEarth:true}] run function jtd:item_swap/jtd_swap_water
execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdEnder:true}] run function jtd:item_swap/jtd_swap_soul
execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdFire:true}] run function jtd:item_swap/jtd_swap_earth
execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdSoul:true}] run function jtd:item_swap/jtd_swap_air
execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdWater:true}] run function jtd:item_swap/jtd_swap_ender

# Backward swapping
execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdAir:true}] run function jtd:item_swap/jtd_swap_soul
execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdEarth:true}] run function jtd:item_swap/jtd_swap_fire
execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdEnder:true}] run function jtd:item_swap/jtd_swap_water
execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdFire:true}] run function jtd:item_swap/jtd_swap_air
execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdSoul:true}] run function jtd:item_swap/jtd_swap_ender
execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 if items entity @s weapon.offhand minecraft:stone_sword[minecraft:custom_data~{jtdWater:true}] run function jtd:item_swap/jtd_swap_earth