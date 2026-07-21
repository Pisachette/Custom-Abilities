# SOUND FX
    # backwards cycle sound
        execute as @a[team=JacobTheDragon] if score @s jtd.sneak matches 1 unless score @s jtd.subtitle_check matches 1 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ .3 1.5
    # forwards cycle sound
        execute as @a[team=JacobTheDragon] unless score @s jtd.sneak matches 1 unless score @s jtd.subtitle_check matches 1 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 2

# RESET TITLE AFTER ITEM SWAP
    execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 run title @s times 0 10t 5t
    execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 run title @s title ""

# SWAPPING ICON DISPLAY
    # AIR ICON
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] run title @s subtitle [{"color":"dark_purple","text":"Σ "},{"color":"dark_aqua","text":"δ "},{"bold":true,"color":"white","text":"»","underlined":true},{"bold":false,"color":"dark_red","text":" ƒ"},{"bold":false,"color":"dark_green","text":" ♣"}]
    # AIR SOUND
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdAir:true}] at @s run playsound minecraft:entity.breeze.idle_air master @s ~ ~ ~ .4 2

    # EARTH ICON
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdEarth:true}] run title @s subtitle [{"color":"gray","text":"» "},{"color":"dark_red","text":"ƒ "},{"bold":true,"color":"green","text":"♣","underlined":true},{"bold":false,"color":"dark_blue","text":" ≈"},{"bold":false,"color":"dark_purple","text":" Σ"}]
    # EARTH SOUND
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdEarth:true}] at @s run playsound minecraft:entity.creaking.deactivate master @s ~ ~ ~ .4 2

    # ENDER ICON
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdEnder:true}] run title @s subtitle [{"color":"dark_green","text":"♣ "},{"color":"dark_blue","text":"≈ "},{"bold":true,"color":"light_purple","text":"Σ","underlined":true},{"bold":false,"color":"dark_aqua","text":" δ"},{"bold":false,"color":"gray","text":" »"}]
    # ENDER SOUND
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdEnder:true}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ .4 2

    # FIRE ICON
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdFire:true}] run title @s subtitle [{"color":"dark_aqua","text":"δ "},{"color":"gray","text":"» "},{"bold":true,"color":"red","text":"ƒ","underlined":true},{"bold":false,"color":"dark_green","text":" ♣"},{"bold":false,"color":"dark_blue","text":" ≈"}]
    # FIRE SOUND
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdFire:true}] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ .4 2

    # SOUL ICON
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdSoul:true}] run title @s subtitle [{"color":"dark_blue","text":"≈ "},{"color":"dark_purple","text":"Σ "},{"bold":true,"color":"aqua","text":"δ","underlined":true},{"bold":false,"color":"gray","text":" »"},{"bold":false,"color":"dark_red","text":" ƒ"}]
    # SOUL SOUND
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdSoul:true}] at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ .4 2

    # WATER ICON
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdWater:true}] run title @s subtitle [{"color":"dark_red","text":"ƒ "},{"color":"dark_green","text":"♣ "},{"bold":true,"color":"blue","text":"≈","underlined":true},{"bold":false,"color":"dark_purple","text":" Σ"},{"bold":false,"color":"dark_aqua","text":" δ"}]
    # WATER SOUND
        execute as @a[team=JacobTheDragon] unless score @s jtd.subtitle_check matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{jtdWater:true}] at @s run playsound minecraft:entity.axolotl.splash master @s ~ ~ ~ .4 2

# SET SUBTITLE CHECK TO PREVENT LOOPING
    execute as @a[team=JacobTheDragon] run scoreboard players set @s jtd.subtitle_check 1