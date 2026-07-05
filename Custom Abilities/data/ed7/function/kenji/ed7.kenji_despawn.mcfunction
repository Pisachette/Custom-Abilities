# despawn message
    title @s actionbar [{"bold":true,"color":"gold","text":"Kenji "},{"bold":false,"color":"gray","text":"has despawned"}]

# despawn fx
    # sounds
        playsound minecraft:block.vault.deactivate master @a ~ ~ ~ 1 .5
        execute at @n[type=wolf,tag=ed7.kenji] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 .5
    # make kenji invisible before dying
        effect give @n[tag=ed7.kenji] invisibility 1 255 true
    # despawn particles
        execute at @n[type=wolf,tag=ed7.kenji] run particle minecraft:campfire_cosy_smoke ~ ~.5 ~ .3 .2 .3 0 50

# remove kenji
    kill @e[type=wolf,tag=ed7.kenji,team=eDRAG0N7]
# stop kenji death sound
    stopsound @s * minecraft:entity.wolf_grumpy.death

# remove player attributes
    attribute @s block_break_speed modifier remove ed7.kenji_break_speed
    attribute @s minecraft:submerged_mining_speed modifier remove ed7.kenji_submerged_mining_speed
    attribute @s luck modifier remove ed7.kenji_luck

# reset toggle score for respawn
    scoreboard players reset @s ed7.kenji_toggle