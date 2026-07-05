# increase timer by 1 tick
    scoreboard players add @s ed7.kenzo_heal_cooldown 1

# grant player effects when kenzo is active
    effect give @s resistance 1 1 true

# FX
    # PARTICLES
        # player particles
            execute unless score @s ed7.player_sneak matches 1.. run particle composter ~ ~2.2 ~ 0 0 0 0 1
            execute if score @s ed7.player_sneak matches 1.. run particle composter ~ ~1.8 ~ 0 0 0 0 1
        # kenzo particles
            execute at @e[type=wolf,tag=ed7.kenzo] run particle composter ~ ~1 ~ 0 0 0 0 1

    # SOUNDS
        execute if score @s ed7.kenzo_heal_cooldown matches 1 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1
        execute if score @s ed7.kenzo_heal_cooldown matches 10 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .5
        execute if score @s ed7.kenzo_heal_cooldown matches 20 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .6
        execute if score @s ed7.kenzo_heal_cooldown matches 30 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .7
        execute if score @s ed7.kenzo_heal_cooldown matches 40 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .8
        execute if score @s ed7.kenzo_heal_cooldown matches 50 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .9
        execute if score @s ed7.kenzo_heal_cooldown matches 60 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1
        execute if score @s ed7.kenzo_heal_cooldown matches 70 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1.1
        execute if score @s ed7.kenzo_heal_cooldown matches 80 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1.2
        execute if score @s ed7.kenzo_heal_cooldown matches 90 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1.3

# HEAL FX
    # heal player at full charge
        execute if score @s ed7.kenzo_heal_cooldown matches 100.. run effect give @s instant_health 1 0 true
    # heal particles
        execute unless score @s ed7.player_sneak matches 1.. if score @s ed7.kenzo_heal_cooldown matches 100.. run particle heart ~ ~2.2 ~ 0 0 0 0 1
        execute if score @s ed7.player_sneak matches 1.. if score @s ed7.kenzo_heal_cooldown matches 100.. run particle heart ~ ~1.8 ~ 0 0 0 0 1
    # heal sound
        execute if score @s ed7.kenzo_heal_cooldown matches 100.. run playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 1 2

# RESET CHARGE AFTER 5s
    execute if score @s ed7.kenzo_heal_cooldown matches 100.. run scoreboard players reset @s ed7.kenzo_heal_cooldown