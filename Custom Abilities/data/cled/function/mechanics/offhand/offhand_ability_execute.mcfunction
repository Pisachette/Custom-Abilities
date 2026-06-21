# call cledball offhand ability function
    execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{cled_cledball:true}] unless entity @e[type=item_display,tag=cled.cledball_projectile] run playsound block.note_block.didgeridoo master @a ~ ~ ~ 1 .5
    execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{cled_cledball:true}] if entity @e[type=item_display,tag=cled.cledball_projectile] run function cled:abilities/offhand/offhand_ability_cledball

# call cledball replace function
    execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{cled_cledball:true}] run function cled:mechanics/offhand/offhand_replace_cledball

# call killball offhand ability function
    execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{cled_killball:true}] unless entity @e[type=#zombies,team=Cledward] run playsound block.note_block.didgeridoo master @a ~ ~ ~ 1 .5
    execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{cled_killball:true}] if entity @e[type=#zombies,team=Cledward] run function cled:abilities/offhand/offhand_ability_killball
    
# call killball replace function
    execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{cled_killball:true}] run function cled:mechanics/offhand/offhand_replace_killball