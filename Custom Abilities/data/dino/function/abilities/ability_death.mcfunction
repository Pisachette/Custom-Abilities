# summon firework when you die
    execute unless score @s dino.jump matches 1 unless score @s dino.explosionTimer matches 60..61 unless score @s dino.sneak matches 1.. run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16711680],fade_colors:[I;0]}]}}}}

# remove explosion knockback resistance
    attribute @s explosion_knockback_resistance modifier remove dino_explosion

# charge deactivation
    # stop sounds
        execute if score @s dino.explosionTimer matches 1.. run stopsound @a master entity.creeper.primed
        execute if score @s dino.explosionTimer matches 1.. run stopsound @a master entity.warden.sonic_charge
        execute if score @s dino.explosionTimer matches 1.. run stopsound @a master entity.evoker.prepare_attack
        execute if score @s dino.explosionTimer matches 1.. run stopsound @a master block.note_block.bell
    # deactivation sound
        execute if score @s dino.explosionTimer matches 1.. run playsound entity.generic.extinguish_fire master @a ~ ~ ~ 1 2

# resets
    # reset explosion check
        scoreboard players reset @s dino.exploded
    # reset explosion charge
        scoreboard players reset @s dino.explosionTimer


# set death check to 1 to prevent looping
    scoreboard players set @s dino.deathCheck 1

