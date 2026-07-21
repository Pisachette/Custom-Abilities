# if the player right clicks with the earth item, set their score for that item to 1 for boolean detection
    execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdEarth:true}] run scoreboard players set @s jtd.earth_rClick 1
# revoke the advancement for re-use
    advancement revoke @s only jtd:jtd_advancement_earth