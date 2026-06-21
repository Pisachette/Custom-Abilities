# toggle bossbar visibility depending on if the player is charging or not
    execute if score @s dino.sneak matches 1 unless score @s dino.deathCheck matches 1 run bossbar set dino.explode visible true
    execute unless score @s dino.sneak matches 1.. if score @s dino.explosionTimer matches 1.. run bossbar set dino.explode visible false
# set the value of the bossbar to reflect the charge time
    execute store result bossbar dino.explode value run scoreboard players get @s dino.explosionTimer
# remove bossbar visibility when player dies
    execute if score @s dino.health matches 0 unless score @s dino.deathCheck matches 1 run bossbar set dino.explode visible false