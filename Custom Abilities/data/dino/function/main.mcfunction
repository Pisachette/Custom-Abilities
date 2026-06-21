# TIMER MECHANICS
    # add score to dino.explosionTimer while player is crouching
        execute as @a[team=Dinomyte08] unless score @s dino.health matches 0 if score @s dino.sneak matches 1.. unless score @s dino.explosionTimer matches 61 run scoreboard players add @s dino.explosionTimer 1
    # activate explosion when timer reaches 60, and the player jumps
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 60..61 if score @s dino.jump matches 1.. at @s run function dino:abilities/ability_explode

# EXPLODE ABILITY fx
    function dino:fx/fx_explode

# remove explosion knockback resistance after activating ability
    execute as @a[team=Dinomyte08] if score @s dino.exploded matches 1 unless score @s dino.sneak matches 1.. run attribute @s explosion_knockback_resistance modifier remove dino_explosion
    execute as @a[team=Dinomyte08] if score @s dino.exploded matches 1 unless score @s dino.sneak matches 1.. run scoreboard players reset @s dino.exploded
    
    execute as @a[team=Dinomyte08] if score @s dino.exploded matches 1 if score @s dino.explosionTimer matches 1.. run attribute @s explosion_knockback_resistance modifier remove dino_explosion
    execute as @a[team=Dinomyte08] if score @s dino.exploded matches 1 if score @s dino.explosionTimer matches 1.. run scoreboard players reset @s dino.exploded

# EXPLODE-ON-DEATH
    # reset death check when player spawns back in
        execute as @a[team=Dinomyte08] if score @s dino.deathCheck matches 1 if score @s dino.health matches 1.. run scoreboard players reset @s dino.deathCheck
    # explode on death unless the death check is 1
        execute as @a[team=Dinomyte08] if score @s dino.health matches 0 unless score @s dino.deathCheck matches 1 at @s run function dino:abilities/ability_death

# SCORE RESETS
    # reset dino.explosionTimer score if player stops crouching
        execute as @a[team=Dinomyte08] unless score @s dino.sneak matches 1.. if score @s dino.explosionTimer matches 1.. run scoreboard players reset @s dino.explosionTimer
    # make crouch boolean
        execute as @a[team=Dinomyte08] if score @s dino.sneak matches 1.. run scoreboard players reset @s dino.sneak
    # make jump boolean
        execute as @a[team=Dinomyte08] if score @s dino.jump matches 1.. run scoreboard players reset @s dino.jump