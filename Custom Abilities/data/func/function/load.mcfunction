say reloaded!
execute as @a at @s run playsound minecraft:block.note_block.cow_bell ambient @a ~ ~ ~ 1 2

#kano5
scoreboard objectives add MSChargeTime dummy
scoreboard objectives add MSExecute minecraft.custom:minecraft.damage_dealt
scoreboard objectives add MSSoundTime dummy
scoreboard objectives add MSChargeUp dummy
scoreboard objectives add MSReset health

scoreboard objectives add book.use dummy
scoreboard objectives add book.charge dummy
scoreboard objectives add book.marker_timer dummy

team add kano5
team modify kano5 color blue
clear @a[team=kano5] glowstone_dust[consumable={consume_seconds:99999,animation:"trident",has_consume_particles:false},food={nutrition:0,saturation:0,can_always_eat:true},lore=[[{"color":"gray","text":"Hold "},{"color":"gold","text":"Interact "},{"color":"gray","text":"to use"}]],max_stack_size=1,custom_name={"bold":true,"color":"yellow","text":"SUN PUNCH"}]
give @a[team=kano5] glowstone_dust[consumable={consume_seconds:99999,animation:"trident",has_consume_particles:false},food={nutrition:0,saturation:0,can_always_eat:true},lore=[[{"color":"gray","text":"Hold "},{"color":"gold","text":"Interact "},{"color":"gray","text":"to use"}]],max_stack_size=1,custom_name={"bold":true,"color":"yellow","text":"SUN PUNCH"}] 1
clear @a[team=kano5] enchanted_book[consumable={consume_seconds:99999,animation:"bow"},custom_data={blast:true},food={nutrition:0,saturation:0,can_always_eat:true},item_name={"bold":true,"color":"yellow","text":"Book of Blasting"},lore=[[{"color":"gray","italic":false,"text":"Hold "},{"color":"gold","italic":false,"text":"Interact "},{"color":"gray","italic":false,"text":"to use"}]],max_stack_size=1]
give @a[team=kano5] enchanted_book[consumable={consume_seconds:99999,animation:"bow"},custom_data={blast:true},food={nutrition:0,saturation:0,can_always_eat:true},item_name={"bold":true,"color":"yellow","text":"Book of Blasting"},lore=[[{"color":"gray","italic":false,"text":"Hold "},{"color":"gold","italic":false,"text":"Interact "},{"color":"gray","italic":false,"text":"to use"}]],max_stack_size=1]
advancement revoke @a only func:use


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


# eDRAG0N7
scoreboard objectives add ed7.health health
scoreboard objectives add ed7.attack minecraft.custom:minecraft.damage_dealt
scoreboard objectives add ed7.sprint minecraft.custom:sprint_one_cm
scoreboard objectives add ed7.hunger food
scoreboard objectives add ed7.rightClick dummy
scoreboard objectives add ed7.summonCharge dummy
scoreboard objectives add ed7.wolf_duration dummy
scoreboard objectives add ed7.wolf_toggle dummy
scoreboard objectives add ed7.hunger_check dummy
scoreboard objectives add ed7.death_check dummy
scoreboard objectives add ed7.sprint_meter dummy
scoreboard objectives add ed7.kira_active dummy
scoreboard objectives add ed7.kenzo_active dummy
scoreboard objectives add ed7.kenzo_health_cooldown dummy
scoreboard objectives add ed7.sneak minecraft.custom:minecraft.sneak_time

team add eDRAG0N7
team modify eDRAG0N7 color aqua
team modify eDRAG0N7 seeFriendlyInvisibles false
team modify eDRAG0N7 deathMessageVisibility never

bossbar add ed7.kira_duration {"bold":true,"color":"dark_red","text":"Kira"}
bossbar set ed7.kira_duration color red
bossbar set ed7.kira_duration max 10
bossbar set ed7.kira_duration style notched_10

clear @a[team=eDRAG0N7] stone_sword[attribute_modifiers=[{id:"entity_interaction_range",type:"entity_interaction_range",amount:-1,operation:"add_multiplied_base",slot:"mainhand"}],consumable={consume_seconds:999999,animation:"brush"},custom_data={ed7.bone:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:bone",item_name={"bold":true,"color":"aqua","italic":false,"text":"Trusty Bone"},lore=[[{"color":"gray","italic":false,"text":"Hold "},{"bold":true,"color":"dark_aqua","italic":false,"text":"Interact "},{"color":"gray","italic":false,"text":"to toggle "},{"bold":true,"color":"gold","italic":false,"text":"Kenji"}],{"color":"black","text":"."},[{"color":"dark_gray","italic":false,"text":"When active, "},{"bold":true,"color":"gold","italic":false,"text":"Kenji "},{"color":"dark_gray","italic":false,"text":"will grant:"}],[{"color":"green","italic":false,"text":"+50% "},{"color":"gray","italic":false,"text":"mining speed"}],[{"color":"green","italic":false,"text":"+100% "},{"color":"gray","italic":false,"text":"Luck"}],{"color":"red","italic":false,"text":"∞ Hunger"}],unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @a[team=eDRAG0N7] stone_sword[attribute_modifiers=[{id:"entity_interaction_range",type:"entity_interaction_range",amount:-1,operation:"add_multiplied_base",slot:"mainhand"}],consumable={consume_seconds:999999,animation:"brush"},custom_data={ed7.bone:true},food={nutrition:0,saturation:0,can_always_eat:true},item_model="minecraft:bone",item_name={"bold":true,"color":"aqua","italic":false,"text":"Trusty Bone"},lore=[[{"color":"gray","italic":false,"text":"Hold "},{"bold":true,"color":"dark_aqua","italic":false,"text":"Interact "},{"color":"gray","italic":false,"text":"to toggle "},{"bold":true,"color":"gold","italic":false,"text":"Kenji"}],{"color":"black","text":"."},[{"color":"dark_gray","italic":false,"text":"When active, "},{"bold":true,"color":"gold","italic":false,"text":"Kenji "},{"color":"dark_gray","italic":false,"text":"will grant:"}],[{"color":"green","italic":false,"text":"+50% "},{"color":"gray","italic":false,"text":"mining speed"}],[{"color":"green","italic":false,"text":"+100% "},{"color":"gray","italic":false,"text":"Luck"}],{"color":"red","italic":false,"text":"∞ Hunger"}],unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}] 1


#Shark
scoreboard objectives add sharkReset health
scoreboard objectives add sharkTimer dummy
scoreboard objectives add sharkCrouch minecraft.custom:minecraft.sneak_time
team add shark
team modify shark color dark_purple


#SRG
team add SRG
team modify SRG color white
bossbar add gaster {"bold":true,"color":"white","text":"Gaster Blaster"}
bossbar set gaster style progress
bossbar set minecraft:gaster max 240
execute as @a[team=SRG] run clear @s bone[consumable={consume_seconds:98985,animation:"bow",has_consume_particles:false},custom_data={gaster_blaster:true},food={nutrition:0,saturation:0,can_always_eat:true},lore=[[{"color":"gray","text":"Hold "},{"color":"dark_aqua","text":"Interact "},{"color":"gray","text":"to use"}]],max_stack_size=1,custom_name={"bold":true,"color":"white","text":"Gaster Blaster"}]
execute as @a[team=SRG] run give @s bone[consumable={consume_seconds:98985,animation:"bow",has_consume_particles:false},custom_data={gaster_blaster:true},food={nutrition:0,saturation:0,can_always_eat:true},lore=[[{"color":"gray","text":"Hold "},{"color":"dark_aqua","text":"Interact "},{"color":"gray","text":"to use"}]],max_stack_size=1,custom_name={"bold":true,"color":"white","text":"Gaster Blaster"}] 1
clear @a[team=SRG] bone[consumable={consume_seconds:99999,animation:"brush"},custom_data={bone_barrage:true},food={nutrition:223,saturation:223,can_always_eat:true},lore=[[{"color":"gray","text":"Hold "},{"color":"dark_aqua","text":"Interact "},{"color":"gray","text":"to use"}],{"color":"red","text":"(Consumes Bone Meal)"}],custom_name={"bold":true,"color":"white","text":"Bone Barrage"},max_stack_size=1]
give @a[team=SRG] bone[consumable={consume_seconds:99999,animation:"brush"},custom_data={bone_barrage:true},food={nutrition:223,saturation:223,can_always_eat:true},lore=[[{"color":"gray","text":"Hold "},{"color":"dark_aqua","text":"Interact "},{"color":"gray","text":"to use"}],{"color":"red","text":"(Consumes Bone Meal)"}],custom_name={"bold":true,"color":"white","text":"Bone Barrage"},max_stack_size=1] 1
execute unless score gasterTimer gasterTimer matches 1.. run scoreboard players set gasterTimer gasterTimer 0
scoreboard objectives add gasterReset health
scoreboard objectives add gasterActivate dummy
scoreboard objectives add gasterCharge dummy
scoreboard objectives add gasterTimer dummy
scoreboard objectives add barrageUse dummy
scoreboard objectives add barrageTimer dummy
scoreboard objectives add barrageCooldown dummy
scoreboard objectives add Ammunition dummy