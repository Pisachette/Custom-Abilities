# if the player right clicks with the fire item, set their score for that item to 1 for boolean detection
    execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdFire:true}] run scoreboard players set @s jtd.fire_rClick 1
# revoke the advancement for re-use
    advancement revoke @s only jtd:jtd_advancement_fire