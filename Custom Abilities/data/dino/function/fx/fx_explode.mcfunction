# SOUND FX
    # play charge sounds when player crouches
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1 run stopsound @a master entity.generic.extinguish_fire
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1 at @s run playsound entity.creeper.primed master @a ~ ~ ~
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1 at @s run playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 1 .55
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1 at @s run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 .7
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 60 at @s run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 2

    # stop charge sounds when player stops crouching
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1.. unless score @s dino.sneak matches 1.. run stopsound @a master entity.creeper.primed
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1.. unless score @s dino.sneak matches 1.. run stopsound @a master entity.warden.sonic_charge
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1.. unless score @s dino.sneak matches 1.. run stopsound @a master entity.evoker.prepare_attack
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1.. unless score @s dino.sneak matches 1.. run stopsound @a master block.note_block.bell
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1.. unless score @s dino.sneak matches 1.. at @s run playsound entity.generic.extinguish_fire master @a ~ ~ ~ 1 2

# VISUAL FX
    # give player glowing and particles when charging explosion
        function dino:fx/fx_charge_visuals

# BOSSBAR PROGRESS DISPLAY
    execute as @a[team=Dinomyte08] run function dino:fx/fx_bossbar

# ACTIONBAR PROGRESS DISPLAY
    # display actionbar
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 60..61 run function dino:fx/fx_actionbar
    # reset actionbar if player stops sneaking
        execute as @a[team=Dinomyte08] if score @s dino.actionbar_loop matches 1.. unless score @s dino.sneak matches 1.. run title @s actionbar [{"text":""}]
        execute as @a[team=Dinomyte08] if score @s dino.actionbar_loop matches 1.. unless score @s dino.sneak matches 1.. run scoreboard players reset @s dino.actionbar_loop
    # reset actionbar if player explodes
        execute as @a[team=Dinomyte08] if score @s dino.actionbar_loop matches 1.. if score @s dino.jump matches 1.. run title @s actionbar [{"text":""}]
        execute as @a[team=Dinomyte08] if score @s dino.actionbar_loop matches 1.. if score @s dino.jump matches 1.. run scoreboard players reset @s dino.actionbar_loop