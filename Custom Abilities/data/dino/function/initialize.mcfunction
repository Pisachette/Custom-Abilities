# add the Dinomyte08 team and set its color to red
    team add Dinomyte08
    team modify Dinomyte08 color red

# create scoreboard objectives for the self-destruct ability
    scoreboard objectives add dino.sneak minecraft.custom:minecraft.sneak_time
    scoreboard objectives add dino.jump minecraft.custom:minecraft.jump
    scoreboard objectives add dino.explosionTimer dummy
    scoreboard objectives add dino.actionbar_loop dummy
    scoreboard objectives add dino.exploded dummy

# create scoreboard objectives for the explode-on-death ability
    scoreboard objectives add dino.health health
    scoreboard objectives add dino.deathCheck dummy

# create bossbar
    bossbar add dino.explode {"bold":true,"color":"red","text":"SELF DESTRUCT"}
    bossbar set dino.explode color red
    bossbar set dino.explode max 60
    bossbar set dino.explode style progress
    bossbar set dino.explode players @a[team=Dinomyte08]

# reload the world
    reload