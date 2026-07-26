# reload message
    tellraw @a [{"color":"gold","text":"Custom Abilities "},{"color":"yellow","text":"datapack has been reloaded!"}]
# reload sound
    execute as @a at @s run playsound minecraft:block.note_block.cow_bell ambient @a ~ ~ ~ 1 2


# make initialization scoreboard objectives
    scoreboard objectives add ed7.initialize dummy
    scoreboard objectives add jtd.initialize dummy
    scoreboard objectives add cled.initialize dummy
    scoreboard objectives add dino.initialize dummy
    scoreboard objectives add kano.initialize dummy
    scoreboard objectives add ntd.initialize dummy

# initialize abilities
    execute unless score ca.init ed7.initialize matches 1 run function ed7:initialize
    execute unless score ca.init jtd.initialize matches 1 run function jtd:initialize
    execute unless score ca.init cled.initialize matches 1 run function cled:initialize
    execute unless score ca.init dino.initialize matches 1 run function dino:initialize
    execute unless score ca.init kano.initialize matches 1 run function kano:initialize
    execute unless score ca.init ntd.initialize matches 1 run function ntd:initialize