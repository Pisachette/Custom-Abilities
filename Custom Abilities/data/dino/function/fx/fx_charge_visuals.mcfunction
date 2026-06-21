# give player glowing when charging explosion
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1 run effect give @s minecraft:glowing 1 0 true
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 6 run effect clear @s minecraft:glowing
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 11 run effect give @s minecraft:glowing 1 0 true
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 16 run effect clear @s minecraft:glowing
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 21 run effect give @s minecraft:glowing 1 0 true
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 26 run effect clear @s minecraft:glowing
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 29 run effect give @s minecraft:glowing 1 0 true
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 32 run effect clear @s minecraft:glowing
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 35 run effect give @s minecraft:glowing 1 0 true
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 38 run effect clear @s minecraft:glowing
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 41 run effect give @s minecraft:glowing 1 0 true
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 44 run effect clear @s minecraft:glowing
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 46 run effect give @s minecraft:glowing 1 0 true
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 48 run effect clear @s minecraft:glowing
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 50 run effect give @s minecraft:glowing 1 0 true
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 52 run effect clear @s minecraft:glowing
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 54 run effect give @s minecraft:glowing 1 0 true
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 56 run effect clear @s minecraft:glowing
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 57 run effect give @s minecraft:glowing 1 0 true
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 58 run effect clear @s minecraft:glowing
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 59 run effect give @s minecraft:glowing 1 0 true
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 60 run effect clear @s minecraft:glowing
    execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 61 run effect give @s minecraft:glowing 1 0 true

# create particle fuse as player charges ability
    # flame
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1 at @s run particle flame ~ ~3.2 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 5 at @s run particle flame ~ ~3.1 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 9 at @s run particle flame ~ ~3 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 13 at @s run particle flame ~ ~2.9 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 17 at @s run particle flame ~ ~2.8 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 21 at @s run particle flame ~ ~2.7 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 25 at @s run particle flame ~ ~2.6 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 29 at @s run particle flame ~ ~2.5 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 33 at @s run particle flame ~ ~2.4 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 37 at @s run particle flame ~ ~2.3 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 41 at @s run particle flame ~ ~2.2 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 45 at @s run particle flame ~ ~2.1 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 49 at @s run particle flame ~ ~2 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 53 at @s run particle flame ~ ~1.9 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 57 at @s run particle flame ~ ~1.8 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 61 at @s run particle flame ~ ~1.7 ~ 0 0 0 0 1
    # smoke
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1..4 at @s run particle electric_spark ~ ~2.9 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 5..8 at @s run particle electric_spark ~ ~2.8 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 9..12 at @s run particle electric_spark ~ ~2.7 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 13..14 at @s run particle electric_spark ~ ~2.6 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 17..20 at @s run particle electric_spark ~ ~2.5 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 21..24 at @s run particle electric_spark ~ ~2.4 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 25..28 at @s run particle electric_spark ~ ~2.3 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 29..32 at @s run particle electric_spark ~ ~2.2 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 33..36 at @s run particle electric_spark ~ ~2.1 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 37..40 at @s run particle electric_spark ~ ~2 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 41..44 at @s run particle electric_spark ~ ~1.9 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 45..48 at @s run particle electric_spark ~ ~1.8 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 49..52 at @s run particle electric_spark ~ ~1.7 ~ 0 0 0 0 1

        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1..4 at @s run particle electric_spark ~ ~2.6 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 5..8 at @s run particle electric_spark ~ ~2.5 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 9..12 at @s run particle electric_spark ~ ~2.4 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 13..16 at @s run particle electric_spark ~ ~2.3 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 17..20 at @s run particle electric_spark ~ ~2.2 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 21..24 at @s run particle electric_spark ~ ~2.1 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 25..28 at @s run particle electric_spark ~ ~2 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 29..32 at @s run particle electric_spark ~ ~1.9 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 33..36 at @s run particle electric_spark ~ ~1.8 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 37..40 at @s run particle electric_spark ~ ~1.7 ~ 0 0 0 0 1

        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1..4 at @s run particle electric_spark ~ ~2.3 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 5..8 at @s run particle electric_spark ~ ~2.2 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 9..12 at @s run particle electric_spark ~ ~2.1 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 13..16 at @s run particle electric_spark ~ ~2 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 17..20 at @s run particle electric_spark ~ ~1.9 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 21..24 at @s run particle electric_spark ~ ~1.8 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 25..28 at @s run particle electric_spark ~ ~1.7 ~ 0 0 0 0 1

        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1..4 at @s run particle electric_spark ~ ~2 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 5..8 at @s run particle electric_spark ~ ~1.9 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 9..12 at @s run particle electric_spark ~ ~1.8 ~ 0 0 0 0 1
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 13..16 at @s run particle electric_spark ~ ~1.7 ~ 0 0 0 0 1
        
        execute as @a[team=Dinomyte08] if score @s dino.explosionTimer matches 1..4 at @s run particle electric_spark ~ ~1.7 ~ 0 0 0 0 1
    