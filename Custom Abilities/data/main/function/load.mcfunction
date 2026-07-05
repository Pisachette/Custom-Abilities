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


# initialize abilities
    execute unless score ca.init ed7.initialize matches 1 run function ed7:initialize
    execute unless score ca.init jtd.initialize matches 1 run function jtd:initialize
    execute unless score ca.init cled.initialize matches 1 run function cled:initialize
    execute unless score ca.init dino.initialize matches 1 run function dino:initialize
    execute unless score ca.init kano.initialize matches 1 run function kano:initialize

#kano5
#scoreboard objectives add MSChargeTime dummy
#scoreboard objectives add MSExecute minecraft.custom:minecraft.damage_dealt
#scoreboard objectives add MSSoundTime dummy
#scoreboard objectives add MSChargeUp dummy
#scoreboard objectives add MSReset health

#scoreboard objectives add book.use dummy
#scoreboard objectives add book.charge dummy
#scoreboard objectives add book.marker_timer dummy

#team add kano5
#team modify kano5 color blue
#clear @a[team=kano5] glowstone_dust[consumable={consume_seconds:99999,animation:"trident",has_consume_particles:false},food={nutrition:0,saturation:0,can_always_eat:true},lore=[[{"color":"gray","text":"Hold "},{"color":"gold","text":"Interact "},{"color":"gray","text":"to use"}]],max_stack_size=1,custom_name={"bold":true,"color":"yellow","text":"SUN PUNCH"}]
#give @a[team=kano5] glowstone_dust[consumable={consume_seconds:99999,animation:"trident",has_consume_particles:false},food={nutrition:0,saturation:0,can_always_eat:true},lore=[[{"color":"gray","text":"Hold "},{"color":"gold","text":"Interact "},{"color":"gray","text":"to use"}]],max_stack_size=1,custom_name={"bold":true,"color":"yellow","text":"SUN PUNCH"}] 1
#clear @a[team=kano5] enchanted_book[consumable={consume_seconds:99999,animation:"bow"},custom_data={blast:true},food={nutrition:0,saturation:0,can_always_eat:true},item_name={"bold":true,"color":"yellow","text":"Book of Blasting"},lore=[[{"color":"gray","italic":false,"text":"Hold "},{"color":"gold","italic":false,"text":"Interact "},{"color":"gray","italic":false,"text":"to use"}]],max_stack_size=1]
#give @a[team=kano5] enchanted_book[consumable={consume_seconds:99999,animation:"bow"},custom_data={blast:true},food={nutrition:0,saturation:0,can_always_eat:true},item_name={"bold":true,"color":"yellow","text":"Book of Blasting"},lore=[[{"color":"gray","italic":false,"text":"Hold "},{"color":"gold","italic":false,"text":"Interact "},{"color":"gray","italic":false,"text":"to use"}]],max_stack_size=1]
#advancement revoke @a only func:use


#HyperCat
scoreboard objectives add jumpCharge minecraft.custom:minecraft.sneak_time
scoreboard objectives add jumpTimer dummy
scoreboard objectives add jumpGlow dummy
scoreboard objectives add jumpActivate minecraft.custom:minecraft.jump
team add HyperCat
team modify HyperCat color yellow


#NicTheDragon
scoreboard objectives add fireInitiate minecraft.custom:minecraft.sneak_time
scoreboard objectives add fireActivate minecraft.custom:minecraft.jump
scoreboard objectives add activeBurn dummy
scoreboard objectives add fireChargeUp dummy
scoreboard objectives add fireActiveTimer dummy
scoreboard objectives add passiveBurn dummy
scoreboard objectives add burnReset health
scoreboard objectives add ft.timer dummy
scoreboard objectives add ft.cooldown dummy
scoreboard objectives add ft.rightClick dummy
scoreboard objectives add ft.charge dummy
clear @a[team=NicTheDragon] wooden_sword[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:0,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"attack_speed",amount:0,operation:"add_value",slot:"mainhand"}],consumable={consume_seconds:99999,animation:"trident"},custom_data={ft:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:soul_lantern",item_name=[{"color":"white","italic":false,"text":"Lantern of the "},{"bold":true,"color":"aqua","text":"Eternal Flame"}],lore=[[{"color":"gray","italic":false,"text":"Hold "},{"bold":true,"color":"dark_aqua","italic":false,"text":"Interact "},{"color":"gray","italic":false,"text":"to summon "},{"bold":true,"color":"aqua","italic":false,"text":"Fire Tornado"}]],tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]},enchantment_glint_override=true,unbreakable={}]
give @a[team=NicTheDragon] wooden_sword[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:0,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"attack_speed",amount:0,operation:"add_value",slot:"mainhand"}],consumable={consume_seconds:99999,animation:"trident"},custom_data={ft:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:soul_lantern",item_name=[{"color":"white","italic":false,"text":"Lantern of the "},{"bold":true,"color":"aqua","text":"Eternal Flame"}],lore=[[{"color":"gray","italic":false,"text":"Hold "},{"bold":true,"color":"dark_aqua","italic":false,"text":"Interact "},{"color":"gray","italic":false,"text":"to summon "},{"bold":true,"color":"aqua","italic":false,"text":"Fire Tornado"}]],tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]},enchantment_glint_override=true,unbreakable={}]

team add NicTheDragon
team modify NicTheDragon color dark_red
team modify NicTheDragon friendlyFire false

bossbar add fb {"bold":true,"color":"red","text":"Fire Breath"}
bossbar set minecraft:fb max 10
bossbar set minecraft:fb color red
bossbar set minecraft:fb style notched_10



#Shark
scoreboard objectives add sharkReset health
scoreboard objectives add sharkTimer dummy
scoreboard objectives add sharkCrouch minecraft.custom:minecraft.sneak_time
team add shark
team modify shark color dark_purple