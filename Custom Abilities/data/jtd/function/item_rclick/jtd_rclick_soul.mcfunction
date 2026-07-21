# if the player right clicks with the soul item, set their score for that item to 1 for boolean detection
    execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdSoul:true}] run scoreboard players set @s jtd.soul_rClick 1
# revoke the advancement for re-use
    advancement revoke @s only jtd:jtd_advancement_soul