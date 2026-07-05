##HyperCat

#charge
execute as @a[team=HyperCat,scores={jumpCharge=1..,jumpTimer=..20}] run scoreboard players add @s jumpTimer 1
#glow
execute as @a[scores={jumpTimer=..19}] run effect clear @s glowing
execute as @a[team=HyperCat,scores={jumpTimer=20}] run scoreboard players set @s jumpGlow 1
execute as @a[scores={jumpGlow=1}] run effect give @s glowing 1 0 true
execute as @a[scores={jumpGlow=4}] run effect clear @s glowing
execute as @a[scores={jumpGlow=1..,jumpTimer=1..}] run scoreboard players add @s jumpGlow 1
#sound fx
execute as @a[team=HyperCat,scores={jumpTimer=20}] at @s run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ .4 2
execute as @a[team=HyperCat,scores={jumpTimer=20}] at @s run playsound minecraft:block.comparator.click ambient @a ~ ~ ~ .5 2
execute as @a[team=HyperCat,scores={jumpTimer=20..21,jumpActivate=1..}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .7 2
execute as @a[team=HyperCat,scores={jumpTimer=20..21,jumpActivate=1..}] at @s run playsound minecraft:entity.breeze.wind_burst ambient @a ~ ~ ~ .7 2
#jump boost
execute as @a[team=HyperCat,scores={jumpTimer=20}] run attribute @s jump_strength base set .8
#particles
execute as @a[team=HyperCat,scores={jumpTimer=1}] at @s run particle minecraft:wax_off ~ ~1.6 ~ 0 0 0 0 1
execute as @a[team=HyperCat,scores={jumpTimer=3}] at @s run particle minecraft:wax_off ~ ~1.7 ~ 0 0 0 0 1
execute as @a[team=HyperCat,scores={jumpTimer=5}] at @s run particle minecraft:wax_off ~ ~1.8 ~ 0 0 0 0 1
execute as @a[team=HyperCat,scores={jumpTimer=7}] at @s run particle minecraft:wax_off ~ ~1.9 ~ 0 0 0 0 1
execute as @a[team=HyperCat,scores={jumpTimer=9}] at @s run particle minecraft:wax_off ~ ~2 ~ 0 0 0 0 1
execute as @a[team=HyperCat,scores={jumpTimer=11}] at @s run particle minecraft:wax_off ~ ~2.1 ~ 0 0 0 0 1
execute as @a[team=HyperCat,scores={jumpTimer=13}] at @s run particle minecraft:wax_off ~ ~2.2 ~ 0 0 0 0 1
execute as @a[team=HyperCat,scores={jumpTimer=15}] at @s run particle minecraft:wax_off ~ ~2.3 ~ 0 0 0 0 1
execute as @a[team=HyperCat,scores={jumpTimer=17}] at @s run particle minecraft:wax_off ~ ~2.4 ~ 0 0 0 0 1
execute as @a[team=HyperCat,scores={jumpTimer=19}] at @s run particle minecraft:happy_villager ~ ~2.5 ~ 0 0 0 0 1
execute as @a[team=HyperCat,scores={jumpTimer=20..21,jumpActivate=1..}] at @s run particle minecraft:poof ~ ~-.5 ~ .5 0 .5 0 10
#resets
execute as @a[scores={jumpGlow=7..}] run scoreboard players set @s jumpGlow 1
execute as @a[team=HyperCat,scores={jumpCharge=0}] run attribute @s jump_strength base set .419
execute as @a[team=HyperCat,scores={jumpCharge=0,jumpTimer=1..}] run scoreboard players set @s jumpTimer 0
execute as @a[team=HyperCat,scores={jumpTimer=20..21,jumpActivate=1..}] run scoreboard players set @s jumpTimer 0
execute as @a[team=HyperCat,scores={jumpCharge=1..}] run scoreboard players set @s jumpCharge 0
execute as @a[team=HyperCat,scores={jumpActivate=1..}] run scoreboard players set @s jumpActivate 0
execute as @a[scores={jumpTimer=0}] run scoreboard players set @s jumpGlow 0



##NicTheDragon
effect give @a[team=NicTheDragon] minecraft:fire_resistance 1 0 true
execute as @a[team=NicTheDragon] run attribute @s minecraft:burning_time base set 0
#charge & timers
execute as @a[team=NicTheDragon,scores={fireInitiate=1..}] run scoreboard players add @s fireChargeUp 1
execute as @a[team=NicTheDragon,scores={fireChargeUp=40..,fireActivate=1..}] run scoreboard players add @s fireActiveTimer 1
#charge cap
execute as @a[team=NicTheDragon,scores={fireChargeUp=40..}] run scoreboard players set @s fireChargeUp 40
#initiate
execute as @a[team=NicTheDragon,scores={fireChargeUp=40..}] run attribute @s minecraft:jump_strength base set .001
execute as @a[team=NicTheDragon,scores={fireChargeUp=40..,fireActivate=1}] run attribute @s minecraft:jump_strength base set .419
execute as @a[team=NicTheDragon,scores={fireChargeUp=..39}] run attribute @s minecraft:jump_strength base set .419
#marker
execute as @a[team=NicTheDragon,scores={fireActiveTimer=10}] at @s run summon marker ~ ~ ~ {Tags:["fire1"]}
execute as @a[team=NicTheDragon,scores={fireActiveTimer=7}] at @s run summon marker ~ ~ ~ {Tags:["fire2"]}
execute as @a[team=NicTheDragon,scores={fireActiveTimer=4}] at @s run summon marker ~ ~ ~ {Tags:["fire3"]}
execute as @a[team=NicTheDragon,scores={fireActiveTimer=1}] at @s run summon marker ~ ~ ~ {Tags:["fire4"]}
execute as @a[team=NicTheDragon,scores={fireActiveTimer=0}] run kill @e[tag=fire1]
execute as @a[team=NicTheDragon,scores={fireActiveTimer=0}] run kill @e[tag=fire2]
execute as @a[team=NicTheDragon,scores={fireActiveTimer=0}] run kill @e[tag=fire3]
execute as @a[team=NicTheDragon,scores={fireActiveTimer=0}] run kill @e[tag=fire4]
execute as @a[team=NicTheDragon,scores={fireActiveTimer=1..200}] at @s run execute as @e[tag=fire1] run tp @s ^ ^ ^4
execute as @a[team=NicTheDragon,scores={fireActiveTimer=1..200}] at @s run execute as @e[tag=fire2] run tp @s ^ ^ ^3
execute as @a[team=NicTheDragon,scores={fireActiveTimer=1..200}] at @s run execute as @e[tag=fire3] run tp @s ^ ^ ^2
execute as @a[team=NicTheDragon,scores={fireActiveTimer=1..200}] at @s run execute as @e[tag=fire4] run tp @s ^ ^ ^1
execute at @e[tag=fire1] if block ~ ~1 ~ #air run setblock ~ ~1 ~ fire
execute at @e[tag=fire2] if block ~ ~1 ~ #air run setblock ~ ~1 ~ fire
execute at @e[tag=fire3] if block ~ ~1 ~ #air run setblock ~ ~1 ~ fire
execute as @e[tag=fire1] at @s run particle flame ~ ~1 ~ .5 .5 .5 0 4
execute as @e[tag=fire2] at @s run particle flame ~ ~1 ~ .3 .3 .3 0 3
execute as @e[tag=fire3] at @s run particle flame ~ ~1 ~ .2 .2 .2 0 2
execute as @e[tag=fire4] at @s run particle flame ~ ~1 ~ .2 .2 .2 0 1
#active burn
execute as @e[tag=fire1] at @s run execute as @e[distance=..2,type=!item,type=!experience_orb,tag=!TPActivateC,tag=!TPActivateD,team=!NicTheDragon,type=!marker] run scoreboard players set @s activeBurn 1
execute as @e[tag=fire2] at @s run execute as @e[distance=..2,type=!item,type=!experience_orb,tag=!TPActivateC,tag=!TPActivateD,team=!NicTheDragon,type=!marker] run scoreboard players set @s activeBurn 1
execute as @e[tag=fire3] at @s run execute as @e[distance=..1.5,type=!item,type=!experience_orb,tag=!TPActivateC,tag=!TPActivateD,team=!NicTheDragon,type=!marker] run scoreboard players set @s activeBurn 1
execute as @e[tag=fire4] at @s run execute as @e[distance=...5,type=!item,type=!experience_orb,tag=!TPActivateC,tag=!TPActivateD,team=!NicTheDragon,type=!marker] run scoreboard players set @s activeBurn 1
execute as @e[scores={activeBurn=1..},team=!NicTheDragon] run data merge entity @s {Fire:140}
execute as @e[scores={activeBurn=1},team=!NicTheDragon] run damage @s 4 indirect_magic by @n[team=NicTheDragon]
#particle fx
execute as @a[team=NicTheDragon,scores={fireChargeUp=1,burnReset=1..}] at @s run summon marker ~ ~ ~ {Tags:["smoke"]}
execute as @a[team=NicTheDragon,scores={fireChargeUp=1..40,fireActiveTimer=0,burnReset=1..}] at @s run execute as @e[tag=smoke] run tp @s ^ ^ ^.5
execute as @a[scores={fireChargeUp=1..60}] run execute as @e[tag=smoke] at @s run particle smoke ~ ~1.1 ~ 0 0 0 0 1
#charge sounds
execute as @a[team=NicTheDragon,scores={fireChargeUp=1,burnReset=1..}] at @s run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 .1
execute as @a[team=NicTheDragon,scores={fireChargeUp=9}] at @s run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ .4 .6
execute as @a[team=NicTheDragon,scores={fireChargeUp=19}] at @s run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ .4 .7
execute as @a[team=NicTheDragon,scores={fireChargeUp=29}] at @s run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ .4 .8
execute as @a[team=NicTheDragon,scores={fireChargeUp=39}] at @s run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ .4 2
execute as @a[team=NicTheDragon,scores={fireActiveTimer=1}] at @s run playsound minecraft:entity.wither.death ambient @a ~ ~ ~ .5 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=1}] at @s run playsound minecraft:entity.warden.roar ambient @a ~ ~ ~ 1 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=1}] at @s run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=21}] at @s run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=41}] at @s run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 2
execute as @a[team=NicTheDragon,scores={fireActiveTimer=61}] at @s run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=81}] at @s run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 2
execute as @a[team=NicTheDragon,scores={fireActiveTimer=101}] at @s run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=121}] at @s run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 2
execute as @a[team=NicTheDragon,scores={fireActiveTimer=141}] at @s run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=161}] at @s run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=1}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=6}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=11}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=16}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=21}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=26}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=31}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=36}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=41}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=46}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=51}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=56}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=61}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=66}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=71}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=76}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=81}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=86}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=91}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=96}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=101}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=106}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=111}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=116}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=121}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=126}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=131}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=136}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=141}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=146}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=151}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=156}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=161}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=166}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=171}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=176}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=181}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=186}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=191}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=196}] at @s run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ .4 .1
execute as @a[team=NicTheDragon,scores={fireChargeUp=1..,fireInitiate=0}] at @s run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ .5 2
execute as @a[team=NicTheDragon,scores={fireActiveTimer=200}] at @s run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ .5 .1
#bossbar
bossbar set minecraft:fb players @a[team=NicTheDragon]
execute as @a[team=NicTheDragon,scores={fireChargeUp=40}] run bossbar set fb visible true
execute as @a[team=NicTheDragon,scores={fireActiveTimer=0}] run bossbar set fb value 10
execute as @a[team=NicTheDragon,scores={fireActiveTimer=20}] run bossbar set fb value 9
execute as @a[team=NicTheDragon,scores={fireActiveTimer=40}] run bossbar set fb value 8
execute as @a[team=NicTheDragon,scores={fireActiveTimer=60}] run bossbar set fb value 7
execute as @a[team=NicTheDragon,scores={fireActiveTimer=80}] run bossbar set fb value 6
execute as @a[team=NicTheDragon,scores={fireActiveTimer=100}] run bossbar set fb value 5
execute as @a[team=NicTheDragon,scores={fireActiveTimer=120}] run bossbar set fb value 4
execute as @a[team=NicTheDragon,scores={fireActiveTimer=140}] run bossbar set fb value 3
execute as @a[team=NicTheDragon,scores={fireActiveTimer=160}] run bossbar set fb value 2
execute as @a[team=NicTheDragon,scores={fireActiveTimer=180}] run bossbar set fb value 1
execute as @a[team=NicTheDragon,scores={fireActiveTimer=200}] run bossbar set fb value 0
#bossbar sounds
execute as @a[team=NicTheDragon,scores={fireActiveTimer=20}] at @s run playsound minecraft:block.note_block.didgeridoo ambient @s ~ ~ ~ 1 2
execute as @a[team=NicTheDragon,scores={fireActiveTimer=40}] at @s run playsound minecraft:block.note_block.didgeridoo ambient @s ~ ~ ~ 1 1.9
execute as @a[team=NicTheDragon,scores={fireActiveTimer=60}] at @s run playsound minecraft:block.note_block.didgeridoo ambient @s ~ ~ ~ 1 1.8
execute as @a[team=NicTheDragon,scores={fireActiveTimer=80}] at @s run playsound minecraft:block.note_block.didgeridoo ambient @s ~ ~ ~ 1 1.7
execute as @a[team=NicTheDragon,scores={fireActiveTimer=100}] at @s run playsound minecraft:block.note_block.didgeridoo ambient @s ~ ~ ~ 1 1.6
execute as @a[team=NicTheDragon,scores={fireActiveTimer=120}] at @s run playsound minecraft:block.note_block.didgeridoo ambient @s ~ ~ ~ 1 1.5
execute as @a[team=NicTheDragon,scores={fireActiveTimer=140}] at @s run playsound minecraft:block.note_block.didgeridoo ambient @s ~ ~ ~ 1 1.4
execute as @a[team=NicTheDragon,scores={fireActiveTimer=160}] at @s run playsound minecraft:block.note_block.didgeridoo ambient @s ~ ~ ~ 1 1.3
execute as @a[team=NicTheDragon,scores={fireActiveTimer=180}] at @s run playsound minecraft:block.note_block.didgeridoo ambient @s ~ ~ ~ 1 1.2
execute as @a[team=NicTheDragon,scores={fireActiveTimer=200}] at @s run playsound minecraft:block.note_block.didgeridoo ambient @s ~ ~ ~ 1 1.1
#actionbar
execute as @a[team=NicTheDragon,scores={fireChargeUp=0}] run title @s actionbar [{"color":"white","text":"["},{"color":"gray","text":"||||"},{"color":"white","text":"]"}]
execute as @a[team=NicTheDragon,scores={fireChargeUp=10}] run title @s actionbar [{"color":"white","text":"["},{"color":"red","text":"|"},{"color":"gray","text":"|||"},{"color":"white","text":"]"}]
execute as @a[team=NicTheDragon,scores={fireChargeUp=20}] run title @s actionbar [{"color":"white","text":"["},{"color":"red","text":"||"},{"color":"gray","text":"||"},{"color":"white","text":"]"}]
execute as @a[team=NicTheDragon,scores={fireChargeUp=30}] run title @s actionbar [{"color":"white","text":"["},{"color":"red","text":"|||"},{"color":"gray","text":"|"},{"color":"white","text":"]"}]
execute as @a[team=NicTheDragon,scores={fireChargeUp=40}] run title @s actionbar [{"color":"white","text":"["},{"bold":true,"color":"red","text":"||||"},{"color":"white","text":"]"}]
##RESETS
execute as @e[tag=activeBurn,scores={burnReset=0}] run scoreboard players set @s activeBurn 0
#charge up cancel sound
execute as @a[team=NicTheDragon,scores={fireChargeUp=1..,fireInitiate=0}] at @s run stopsound @a ambient minecraft:block.fire.ambient
#charge up particles
execute as @a[team=NicTheDragon,scores={fireChargeUp=0}] run kill @e[tag=smoke]
execute as @a[team=NicTheDragon,scores={fireActiveTimer=1..}] run kill @e[tag=smoke]
#fire duration timer
execute as @a[team=NicTheDragon,scores={fireChargeUp=0..39}] run bossbar set fb visible false
#fire sound reset
execute as @a[team=NicTheDragon,scores={fireActiveTimer=0}] run stopsound @a ambient minecraft:entity.wither.death
execute as @a[team=NicTheDragon,scores={fireActiveTimer=0}] run stopsound @a ambient minecraft:entity.warden.roar
#death failsafe
execute as @a[team=NicTheDragon,scores={burnReset=0}] run scoreboard players set @s fireChargeUp 0
execute as @a[scores={burnReset=0,passiveBurn=1..}] run scoreboard players set @s passiveBurn 0
execute as @a[team=NicTheDragon,scores={burnReset=0,fireChargeUp=0..}] run kill @e[tag=smoke]
#active burn
execute as @e[scores={activeBurn=1..}] run scoreboard players set @s activeBurn 0
#activation reset
execute as @a[team=NicTheDragon,scores={fireActivate=2..}] run scoreboard players set @s fireActivate 1
#reset jump score if not crouching
execute as @a[team=NicTheDragon,scores={fireActivate=1..,fireInitiate=0}] run scoreboard players set @s fireActivate 0
#reset fire duration
execute as @a[team=NicTheDragon,scores={fireActiveTimer=200..}] run scoreboard players set @s fireChargeUp 0
execute as @a[scores={fireActiveTimer=200..}] run scoreboard players set @s fireActiveTimer 0
#cancel fire
execute as @a[scores={fireChargeUp=0}] run scoreboard players set @s fireActiveTimer 0
#reset jump score if not fully charged
execute as @a[scores={fireActivate=1..,fireChargeUp=..39}] run scoreboard players set @s fireActivate 0
#reset charge up if not crouching
execute as @a[team=NicTheDragon,scores={fireChargeUp=1..,fireInitiate=0}] run scoreboard players set @s fireChargeUp 0
#test if crouching
execute as @a[team=NicTheDragon,scores={fireInitiate=1..}] run scoreboard players set @s fireInitiate 0


# FIRE TORNADO

# teleport fire tornado to player if it gets too far
execute as @e[type=vindicator,tag=fire_tornado] at @s unless entity @a[team=NicTheDragon,distance=..64] run tellraw @a[team=NicTheDragon] [{"color":"white","text":"Your "},{"bold":true,"color":"aqua","text":"Fire Tornado "},"is too far away! It has teleported to you."]
execute as @e[type=vindicator,tag=fire_tornado] at @s unless entity @a[team=NicTheDragon,distance=..64] at @a[team=NicTheDragon] run playsound minecraft:entity.enderman.teleport master @a[team=NicTheDragon] ~ ~ ~ 1 2
execute as @e[type=vindicator,tag=fire_tornado] at @s unless entity @a[team=NicTheDragon,distance=..64] run tp @s @a[team=NicTheDragon,limit=1]

# fire resistance for tornado entity
effect give @e[type=vindicator,team=NicTheDragon,tag=fire_tornado,limit=1] minecraft:fire_resistance 1 0 true

# cooldown timer and sounds
execute as @a[team=NicTheDragon] if score @s ft.timer matches 2 run scoreboard players add @s ft.cooldown 1
execute as @a[team=NicTheDragon] if score @s ft.cooldown matches 600.. run tellraw @a[team=NicTheDragon] [{"color":"white","text":"Your "},{"bold":true,"color":"aqua","text":"Fire Tornado "},"is off cooldown!"]
execute as @a[team=NicTheDragon] if score @s ft.cooldown matches 600.. at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2
execute as @a[team=NicTheDragon] if score @s ft.cooldown matches 600.. run scoreboard players set @s ft.timer 0
execute as @a[team=NicTheDragon] if score @s ft.cooldown matches 600.. run scoreboard players set @s ft.cooldown 0

execute as @a[team=NicTheDragon] if score @s ft.cooldown matches 1.. if score @s ft.charge matches 1 run tellraw @a[team=NicTheDragon] [{"color":"white","text":"Your "},{"bold":true,"color":"aqua","text":"Fire Tornado "},"is on cooldown!"]
execute as @a[team=NicTheDragon] if score @s ft.cooldown matches 1.. if score @s ft.charge matches 1 at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 .5

# glow when charging
execute as @a[team=NicTheDragon] if score @s ft.rightClick matches 1 unless score @s ft.timer matches 2 run team modify NicTheDragon color aqua
execute as @a[team=NicTheDragon] if score @s ft.rightClick matches 1 unless score @s ft.timer matches 2 run effect give @s glowing 1 0 true

execute as @a[team=NicTheDragon] if score @s ft.rightClick matches 0 run team modify NicTheDragon color dark_red
execute as @a[team=NicTheDragon] if score @s ft.rightClick matches 0 run effect clear @s glowing


# charge up the meter if the player is holding right-click
execute as @a[team=NicTheDragon] if score @s ft.rightClick matches 1.. unless score @s ft.charge matches 61 run scoreboard players add @s ft.charge 1


# charge sounds
execute as @a[team=NicTheDragon] if score @s ft.charge matches 1 unless score @s ft.timer matches 1 unless score @s ft.timer matches 2 run stopsound @a master block.beacon.deactivate
execute as @a[team=NicTheDragon] if score @s ft.charge matches 1 unless score @s ft.timer matches 1 unless score @s ft.timer matches 2 at @s run playsound minecraft:entity.breeze.charge master @a ~ ~ ~ 1 .5
execute as @a[team=NicTheDragon] if score @s ft.charge matches 1 unless score @s ft.timer matches 1 unless score @s ft.timer matches 2 at @s run playsound entity.warden.sonic_charge master @a ~ ~ ~ .5 .545
execute as @a[team=NicTheDragon] if score @s ft.charge matches 1 unless score @s ft.timer matches 1 unless score @s ft.timer matches 2 at @s run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 .5
execute as @a[team=NicTheDragon] if score @s ft.charge matches 60 unless score @s ft.timer matches 1 unless score @s ft.timer matches 2 at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 2

# summon the tornado when charged up / unsummon when active
execute as @a[team=NicTheDragon] if score @s ft.charge matches 60..61 if score @s ft.timer matches 1 if score @s ft.rightClick matches 0 run kill @n[type=marker,tag=fire_tornado_particles]
execute as @a[team=NicTheDragon] if score @s ft.charge matches 60..61 if score @s ft.timer matches 1 if score @s ft.rightClick matches 0 at @n[type=vindicator,tag=fire_tornado] run playsound minecraft:entity.breeze.death master @a ~ ~ ~ 1 .5
execute as @a[team=NicTheDragon] if score @s ft.charge matches 60..61 if score @s ft.timer matches 1 if score @s ft.rightClick matches 0 at @s run playsound minecraft:entity.breeze.death master @s ~ ~ ~ 1 .5
execute as @a[team=NicTheDragon] if score @s ft.charge matches 60..61 if score @s ft.timer matches 1 if score @s ft.rightClick matches 0 run tellraw @a[team=NicTheDragon] [{"color":"white","text":"Your "},{"bold":true,"color":"aqua","text":"Fire Tornado "},"is no longer active!"]
execute as @a[team=NicTheDragon] if score @s ft.charge matches 60..61 if score @s ft.timer matches 1 if score @s ft.rightClick matches 0 run kill @n[type=vindicator,tag=fire_tornado]
execute as @a[team=NicTheDragon] if score @s ft.charge matches 60..61 if score @s ft.rightClick matches 0 if score @s ft.timer matches 1 run scoreboard players set @a[team=NicTheDragon] ft.timer 2

execute as @a[team=NicTheDragon] if score @s ft.timer matches 0 if score @s ft.charge matches 60..61 if score @s ft.rightClick matches 0 at @s unless score @s ft.timer matches 2 run playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 1 .5
execute as @a[team=NicTheDragon] if score @s ft.timer matches 0 if score @s ft.charge matches 60..61 if score @s ft.rightClick matches 0 at @s unless score @s ft.timer matches 2 run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1 .5
execute as @a[team=NicTheDragon] if score @s ft.timer matches 0 if score @s ft.charge matches 60..61 if score @s ft.rightClick matches 0 at @s unless score @s ft.timer matches 2 run playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 1 .5
execute as @a[team=NicTheDragon] if score @s ft.timer matches 0 if score @s ft.charge matches 60..61 if score @s ft.rightClick matches 0 unless score @s ft.timer matches 2 run tellraw @a[team=NicTheDragon] [{"color":"white","text":"Your "},{"bold":true,"color":"aqua","text":"Fire Tornado "},"is active!"]
execute as @a[team=NicTheDragon] if score @s ft.timer matches 0 if score @s ft.charge matches 60..61 if score @s ft.rightClick matches 0 unless score @s ft.timer matches 2 at @s run summon vindicator ~ ~ ~ {Silent:1b,Team:"NicTheDragon",PersistenceRequired:1b,CanPickUpLoot:0b,Johnny:1b,DeathLootTable:"minecraft:empty",Tags:["fire_tornado"],attributes:[{id:"minecraft:attack_damage",base:-1},{id:"minecraft:attack_knockback",base:-1},{id:"minecraft:attack_speed",base:-1},{id:"minecraft:follow_range",base:32},{id:"minecraft:step_height",base:3},{id:"minecraft:movement_speed",base:.35},{id:"minecraft:max_health",base:100},{id:"minecraft:scale",base:1.5},{id:"minecraft:safe_fall_distance",base:1024}]}
execute as @a[team=NicTheDragon] if score @s ft.timer matches 0 if score @s ft.charge matches 60..61 if score @s ft.rightClick matches 0 unless score @s ft.timer matches 2 run scoreboard players set @s ft.timer 1

execute as @a[team=NicTheDragon] if score @s ft.timer matches 1 if score @s ft.charge matches 0 run stopsound @a master minecraft:block.respawn_anchor.deplete

execute as @a[team=NicTheDragon] if score @s ft.timer matches 1 if score @s ft.charge matches 1 at @s run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 .5
execute as @a[team=NicTheDragon] if score @s ft.timer matches 1 if score @s ft.charge matches 20 at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1
execute as @a[team=NicTheDragon] if score @s ft.timer matches 1 if score @s ft.charge matches 40 at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 .75
execute as @a[team=NicTheDragon] if score @s ft.timer matches 1 if score @s ft.charge matches 60 at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 .5
execute as @a[team=NicTheDragon] if score @s ft.timer matches 1 if score @s ft.charge matches 60 at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 1 .5

# remove the fire tornado if the entity is killed
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] unless entity @n[type=vindicator,tag=fire_tornado] at @s run playsound minecraft:entity.breeze.death master @a ~ ~ ~ 1 .5
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] unless entity @n[type=vindicator,tag=fire_tornado] at @a[team=NicTheDragon] run playsound minecraft:entity.breeze.death master @a[team=NicTheDragon] ~ ~ ~ 1 .5
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] unless entity @n[type=vindicator,tag=fire_tornado] run tellraw @a[team=NicTheDragon] [{"color":"white","text":"Your "},{"bold":true,"color":"aqua","text":"Fire Tornado "},"has been destroyed!"]
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] unless entity @n[type=vindicator,tag=fire_tornado] run scoreboard players set @a[team=NicTheDragon] ft.timer 2
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] unless entity @n[type=vindicator,tag=fire_tornado] run kill @n[type=marker,tag=fire_tornado_particles]

# make sure the player doesn't see the invisible vindicator
team modify NicTheDragon seeFriendlyInvisibles false

# give vindicator invisibility
effect give @n[type=vindicator,tag=fire_tornado,limit=1] invisibility 1 255 true

# tornado lifetime and particle timer
execute as @e[type=vindicator,tag=fire_tornado,limit=1] run scoreboard players add @s ft.timer 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] run scoreboard players add @s ft.timer 1

# summon the particle marker upon activation
execute as @e[type=vindicator,tag=fire_tornado,limit=1] if score @s ft.timer matches 1 at @s run summon marker ~ ~ ~ {Tags:["fire_tornado_particles"]}

# rotate the particle marker to get circle effect
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] at @s run tp @s ~ ~ ~ ~1152 ~

# teleport the particle marker to the vindicator
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] at @n[type=vindicator,tag=fire_tornado,limit=1] run tp @s ~ ~ ~

# fire tornado particles
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^ ^.6 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^.5 ^.9 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul ^ ^.5 ^1 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^1 ^1.2 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^1.5 ^1.5 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^2 ^1.8 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^2.5 ^2.1 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^3 ^2.4 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^3.5 ^2.7 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^4 ^3 0 0 0 .02 1

execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^ ^-.6 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^.5 ^-.9 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^1 ^-1.2 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^1.5 ^-1.5 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul ^ ^1.5 ^-1.6 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^2 ^-1.8 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^2.5 ^-2.1 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^3 ^-2.4 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^3.5 ^-2.7 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^ ^4 ^-3 0 0 0 .02 1

execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^.6 ^ ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^.9 ^.5 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^1.2 ^1 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^1.5 ^1.5 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^1.8 ^2 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^2.1 ^2.5 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul ^2.2 ^2.5 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^2.4 ^3 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^2.7 ^3.5 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^3 ^4 ^ 0 0 0 .02 1

execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^-.6 ^ ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^-.9 ^.5 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^-1.2 ^1 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^-1.5 ^1.5 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^-1.8 ^2 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^-2.1 ^2.5 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^-2.4 ^3 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^-2.7 ^3.5 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul ^-2.8 ^3.5 ^ 0 0 0 .02 1
execute as @e[type=marker,tag=fire_tornado_particles,limit=1] if score @s ft.timer matches 1.. at @s run particle soul_fire_flame ^-3 ^4 ^ 0 0 0 .02 1

# fire tornado sounds
execute at @e[type=marker,tag=fire_tornado_particles,limit=1] run playsound minecraft:entity.breeze.idle_air master @a ~ ~ ~ 1 .5

# apply effects to things caught in the tornado
execute at @n[type=marker,tag=fire_tornado_particles] run execute as @e[distance=..5,type=!item,type=!marker,tag=!fire_tornado,team=!NicTheDragon] run effect give @s levitation 1 1 true
execute at @n[type=marker,tag=fire_tornado_particles] run execute as @e[distance=..5,type=!item,type=!marker,tag=!fire_tornado,team=!NicTheDragon] run damage @s 1 indirect_magic by @a[team=NicTheDragon,limit=1]

# kill the fire tornado entities when their time runs out / if the player dies
execute as @e[type=vindicator,tag=fire_tornado] if score @s ft.timer matches 1200.. run kill @n[type=marker,tag=fire_tornado_particles]
execute as @e[type=vindicator,tag=fire_tornado] if score @s ft.timer matches 1200.. run scoreboard players set @a[team=NicTheDragon] ft.timer 2
execute as @e[type=vindicator,tag=fire_tornado] if score @s ft.timer matches 1200.. at @s run playsound minecraft:entity.breeze.death master @a ~ ~ ~ 1 .5
execute as @e[type=vindicator,tag=fire_tornado] if score @s ft.timer matches 1200.. at @a[team=NicTheDragon] run playsound minecraft:entity.breeze.death master @a[team=NicTheDragon] ~ ~ ~ 1 .5
execute as @e[type=vindicator,tag=fire_tornado] if score @s ft.timer matches 1200.. run tellraw @a[team=NicTheDragon] [{"color":"white","text":"Your "},{"bold":true,"color":"aqua","text":"Fire Tornado "},"is no longer active!"]
execute as @e[type=vindicator,tag=fire_tornado] if score @s ft.timer matches 1200.. run kill @s

execute as @a[team=NicTheDragon] if score @s burnReset matches 0 if score @s ft.timer matches 1 run kill @n[type=marker,tag=fire_tornado_particles]
execute as @a[team=NicTheDragon] if score @s burnReset matches 0 if score @s ft.timer matches 1 at @n[type=vindicator,tag=fire_tornado] run playsound minecraft:entity.breeze.death master @a ~ ~ ~ 1 .5
execute as @a[team=NicTheDragon] if score @s burnReset matches 0 if score @s ft.timer matches 1 at @s run playsound minecraft:entity.breeze.death master @s ~ ~ ~ 1 .5
execute as @a[team=NicTheDragon] if score @s burnReset matches 0 if score @s ft.timer matches 1 run tellraw @a[team=NicTheDragon] [{"color":"white","text":"Your "},{"bold":true,"color":"aqua","text":"Fire Tornado "},"is no longer active!"]
execute as @a[team=NicTheDragon] if score @s burnReset matches 0 if score @s ft.timer matches 1 run kill @n[type=vindicator,tag=fire_tornado]
execute as @a[team=NicTheDragon] if score @s burnReset matches 0 if score @s ft.timer matches 1 run scoreboard players set @a[team=NicTheDragon] ft.timer 2


# play deactivation sound if the player stops charging
execute as @a[team=NicTheDragon] if score @s ft.charge matches 1.. if score @s ft.rightClick matches 0 unless score @s ft.timer matches 1 unless score @s ft.timer matches 2 at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 1 .5

# stop right-clicking if the player dies
execute as @a[team=NicTheDragon] if score @s burnReset matches 0 run scoreboard players set @s ft.rightClick 0

# make the right-click detection boolean
execute as @a[team=NicTheDragon] if score @s ft.rightClick matches 0 if score @s ft.charge matches 1.. run scoreboard players set @s ft.charge 0
execute as @a[team=NicTheDragon] if score @s ft.rightClick matches 1.. run scoreboard players set @s ft.rightClick 0

# stop sound if the player stops charging
execute as @a[team=NicTheDragon] if score @s ft.charge matches 0 at @s run stopsound @a master minecraft:entity.breeze.charge
execute as @a[team=NicTheDragon] if score @s ft.charge matches 0 at @s run stopsound @a master entity.warden.sonic_charge
execute as @a[team=NicTheDragon] if score @s ft.charge matches 0 at @s run stopsound @a master block.respawn_anchor.charge



# HEART OF THE PACK

# death safety
execute as @a[team=eDRAG0N7] if score @s ed7.health matches 0 run function func:ed7_death
execute as @a[team=eDRAG0N7] if score @s ed7.health matches 1.. run scoreboard players reset @s ed7.death_check


# UTILITY WOLF (Kenji)

# hunger bar safety
execute as @a[team=eDRAG0N7] if score @s ed7.hunger matches 1.. run scoreboard players reset @s ed7.hunger_check
execute as @a[team=eDRAG0N7] if score @s ed7.hunger matches 0 at @s run function func:ed7_kenji_hunger

# charge up the meter if the player is holding right-click
execute as @a[team=eDRAG0N7] if score @s ed7.rightClick matches 1.. unless score @s ed7.summonCharge matches 11 run scoreboard players add @s ed7.summonCharge 1
# play charge sounds
execute as @a[team=eDRAG0N7] if score @s ed7.summonCharge matches 1 at @s run playsound minecraft:entity.skeleton.ambient master @a ~ ~ ~ 1 .5
execute as @a[team=eDRAG0N7] if score @s ed7.summonCharge matches 6 at @s run playsound minecraft:entity.skeleton.ambient master @a ~ ~ ~ 1 .5
# toggle wolf on and off
execute as @a[team=eDRAG0N7] if score @s ed7.rightClick matches 1.. if score @s ed7.summonCharge matches 10 at @s run function func:ed7_toggle_kenji
# give hunger to the player when wolf is active
execute as @a[team=eDRAG0N7] if score @s ed7.wolf_toggle matches 1 run effect give @s hunger 1 1 true
# particles for wolf and player
execute as @a[team=eDRAG0N7] if score @s ed7.wolf_toggle matches 1 at @s run particle minecraft:wax_on ~ ~.1 ~ .1 0 .1 0 1
execute as @e[type=wolf,tag=ed7.kenji] at @s run particle minecraft:wax_on ~ ~.1 ~ .1 0 .1 0 1


# MOBILITY WOLF (Kaze)

# charge up sprint meter
execute as @a[team=eDRAG0N7] if score @s ed7.sprint matches 1.. unless score @s ed7.sprint_meter matches 61 run scoreboard players add @s ed7.sprint_meter 1
# charge down sprint meter when player stops springing
execute as @a[team=eDRAG0N7] if score @s ed7.sprint matches 0 unless score @s ed7.sprint_meter matches ..0 run scoreboard players remove @s ed7.sprint_meter 1

# display action bar when sprinting
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 1.. run function func:ed7_kaze_actionbar

# remove kaze if stop sprinting
execute as @a[team=eDRAG0N7] if score @s ed7.sprint matches 0 if score @s ed7.sprint_meter matches 60.. at @s run function func:ed7_kaze_remove

# summon particles on player and wolf when sprinting/active
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 1..59 if score @s ed7.sprint matches 1.. at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0 1
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 60.. at @s run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0 .5 0 0 3
execute at @e[type=wolf,tag=ed7.kaze] run particle minecraft:enchanted_hit ~ ~.5 ~ 0 0 0 0 1

# play sounds when sprinting
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 1..59 unless score @s ed7.sprint matches 0 at @s run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ .5 .5
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 60.. at @s run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 2

# play sounds at certain levels of the sprint meter
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 6 at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 .5
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 12 at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 .6
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 18 at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 .7
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 24 at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 .8
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 30 at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 .9
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 36 at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 1
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 42 at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 1.1
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 48 at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 1.2
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 54 at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 1.3
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 60 at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 1.4

# execute the speed function when the sprint meter is full and the player is still sprinting 
execute as @a[team=eDRAG0N7] if score @s ed7.sprint_meter matches 60 unless score @s ed7.sprint matches 0 at @s run function func:ed7_kaze_speed


# ATTACK WOLF (Kira)
# summon the wolf when attacking
execute as @a[team=eDRAG0N7] if score @s ed7.attack matches 1.. unless score @s ed7.kira_active matches 1 at @s run function func:ed7_kira_spawn

# visual timer for Kira
execute as @e[type=wolf,tag=ed7.kira,scores={ed7.wolf_duration=0}] run bossbar set minecraft:ed7.kira_duration value 10
execute as @e[type=wolf,tag=ed7.kira,scores={ed7.wolf_duration=10}] run bossbar set minecraft:ed7.kira_duration value 9
execute as @e[type=wolf,tag=ed7.kira,scores={ed7.wolf_duration=20}] run bossbar set minecraft:ed7.kira_duration value 8
execute as @e[type=wolf,tag=ed7.kira,scores={ed7.wolf_duration=30}] run bossbar set minecraft:ed7.kira_duration value 7
execute as @e[type=wolf,tag=ed7.kira,scores={ed7.wolf_duration=40}] run bossbar set minecraft:ed7.kira_duration value 6
execute as @e[type=wolf,tag=ed7.kira,scores={ed7.wolf_duration=50}] run bossbar set minecraft:ed7.kira_duration value 5
execute as @e[type=wolf,tag=ed7.kira,scores={ed7.wolf_duration=60}] run bossbar set minecraft:ed7.kira_duration value 4
execute as @e[type=wolf,tag=ed7.kira,scores={ed7.wolf_duration=70}] run bossbar set minecraft:ed7.kira_duration value 3
execute as @e[type=wolf,tag=ed7.kira,scores={ed7.wolf_duration=80}] run bossbar set minecraft:ed7.kira_duration value 2
execute as @e[type=wolf,tag=ed7.kira,scores={ed7.wolf_duration=90}] run bossbar set minecraft:ed7.kira_duration value 1

# set timer for the wolf
execute as @a[team=eDRAG0N7] if score @s ed7.attack matches 1.. if score @n[type=wolf,tag=ed7.kira] ed7.wolf_duration matches 1.. at @s run playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 1 2
execute as @e[type=wolf,tag=ed7.kira] run scoreboard players add @s ed7.wolf_duration 1
execute as @a[team=eDRAG0N7] if score @n[type=wolf,tag=ed7.kira] ed7.wolf_duration matches 100.. run function func:ed7_kira_remove
# reset the wolf timer if the player attacks again while it's active
execute as @a[team=eDRAG0N7] if score @s ed7.attack matches 1.. run scoreboard players set @n[type=wolf,tag=ed7.kira] ed7.wolf_duration 0

# VITALITY WOLF (Kenzo)
execute as @a[team=eDRAG0N7] if score @s ed7.health matches 1..10 unless score @s ed7.kenzo_active matches 1 at @s run function func:ed7_kenzo_spawn
execute as @a[team=eDRAG0N7] if score @s ed7.health matches 20.. at @s run function func:ed7_kenzo_despawn

# cooldown timer
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_active matches 1 run scoreboard players add @s ed7.kenzo_health_cooldown 1
# resistance
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_active matches 1 run effect give @s resistance 1 1 true
# health effects and sounds
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_health_cooldown matches 1 at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_health_cooldown matches 100.. run function func:ed7_kenzo_health_effects

execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 10 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .5
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 20 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .6
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 30 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .7
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 40 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .8
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 50 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 .9
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 60 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 70 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1.1
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 80 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1.2
execute as @a[team=eDRAG0N7] at @s if score @s ed7.kenzo_health_cooldown matches 90 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ .5 1.3

# active particles
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_active matches 1 unless score @s ed7.sneak matches 1.. at @s run particle composter ~ ~2.2 ~ 0 0 0 0 1
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_active matches 1 if score @s ed7.sneak matches 1.. at @s run particle composter ~ ~1.8 ~ 0 0 0 0 1
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_active matches 1 at @e[type=wolf,tag=ed7.kenzo] run particle composter ~ ~1 ~ 0 0 0 0 1

# cooldown reset
execute as @a[team=eDRAG0N7] if score @s ed7.kenzo_health_cooldown matches 100.. run scoreboard players reset @s ed7.kenzo_health_cooldown


# score resets
execute as @a[team=eDRAG0N7] if score @s ed7.attack matches 1.. run scoreboard players set @s ed7.attack 0
execute as @a[team=eDRAG0N7] if score @s ed7.sprint matches 1.. run scoreboard players set @s ed7.sprint 0
execute as @a[team=eDRAG0N7] if score @s ed7.sneak matches 1.. run scoreboard players set @s ed7.sneak 0
execute as @a[team=eDRAG0N7] if score @s ed7.rightClick matches 0 run scoreboard players set @s ed7.summonCharge 0
execute as @a[team=eDRAG0N7] if score @s ed7.rightClick matches 1.. run scoreboard players set @s ed7.rightClick 0



##Shark
execute as @a[team=shark,scores={sharkReset=1..},nbt={SelectedItem:{id:"minecraft:trident"}}] run effect give @s dolphins_grace 1 0 true
execute as @a[team=shark,scores={sharkReset=1..},nbt={SelectedItem:{id:"minecraft:trident"}}] run effect give @s water_breathing 1 0 true
execute as @a[team=shark,scores={sharkCrouch=1,sharkReset=1..},nbt={SelectedItem:{id:"minecraft:trident"}}] run scoreboard players add @s sharkTimer 1
execute as @a[team=shark,scores={sharkCrouch=1,sharkReset=1..},nbt={SelectedItem:{id:"minecraft:trident"}}] run effect give @s glowing 1 0 true
execute as @a[team=shark,scores={sharkTimer=1}] at @s run summon marker ~ ~ ~ {Tags:["shark"]}
execute as @a[team=shark] at @s run tp @e[tag=shark] ~ ~.2 ~
execute as @e[tag=shark] at @s run tp @s ~ ~ ~ ~1152 ~
execute as @a[team=shark,scores={sharkTimer=1}] at @s run playsound block.beacon.activate ambient @a ~ ~ ~ 1 2
execute as @a[team=shark,scores={sharkTimer=1..}] at @s run playsound minecraft:ui.hud.bubble_pop ambient @a ~ ~ ~ .7 1
execute as @a[team=shark,scores={sharkTimer=1..}] at @s run particle minecraft:bubble_pop ~ ~.6 ~ .3 .4 .3 0 3
execute at @e[tag=shark] run particle minecraft:falling_water ^ ^ ^5 0 0 0 0 1
execute at @e[tag=shark] run particle minecraft:falling_water ^ ^ ^-5 0 0 0 0 1
execute at @e[tag=shark] run particle minecraft:falling_water ^5 ^ ^ 0 0 0 0 1
execute at @e[tag=shark] run particle minecraft:falling_water ^-5 ^ ^ 0 0 0 0 1
execute at @a[team=shark,scores={sharkTimer=1..}] as @a[distance=..5,team=!shark] run effect give @s glowing 1 0 true
execute at @a[team=shark,scores={sharkTimer=20}] as @a[distance=..5] run effect give @s instant_health 1 0 true
execute at @a[team=shark,scores={sharkTimer=20}] as @a[distance=..5] at @s run particle heart ~ ~2.1 ~ 0 0 0 0 1
execute at @a[team=shark,scores={sharkTimer=20}] as @a[distance=..5] at @s run playsound minecraft:block.amethyst_block.resonate ambient @a ~ ~ ~ 1 2
execute as @a[team=shark,scores={sharkTimer=1..,sharkCrouch=0}] at @s run stopsound @s ambient block.beacon.activate
execute as @a[team=shark,scores={sharkTimer=1..,sharkCrouch=0}] at @s run playsound block.beacon.deactivate ambient @a ~ ~ ~ 1 2
#actionbar sounds
execute as @a[team=shark,scores={sharkTimer=4}] at @s run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ .3 .6
execute as @a[team=shark,scores={sharkTimer=8}] at @s run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ .3 .7
execute as @a[team=shark,scores={sharkTimer=12}] at @s run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ .3 .8
execute as @a[team=shark,scores={sharkTimer=16}] at @s run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ .3 .9
execute as @a[team=shark,scores={sharkTimer=20}] at @s run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ .3 1
#actionbar
execute as @a[team=shark,scores={sharkTimer=0},nbt={SelectedItem:{id:"minecraft:trident"}}] run title @s actionbar [{"color":"white","text":"["},{"color":"gray","text":"|||||"},{"color":"white","text":"]"}]
execute as @a[team=shark,scores={sharkTimer=4},nbt={SelectedItem:{id:"minecraft:trident"}}] run title @s actionbar [{"color":"white","text":"["},{"color":"blue","text":"|"},{"color":"gray","text":"||||"},{"color":"white","text":"]"}]
execute as @a[team=shark,scores={sharkTimer=8},nbt={SelectedItem:{id:"minecraft:trident"}}] run title @s actionbar [{"color":"white","text":"["},{"color":"blue","text":"||"},{"color":"gray","text":"|||"},{"color":"white","text":"]"}]
execute as @a[team=shark,scores={sharkTimer=12},nbt={SelectedItem:{id:"minecraft:trident"}}] run title @s actionbar [{"color":"white","text":"["},{"color":"blue","text":"|||"},{"color":"gray","text":"||"},{"color":"white","text":"]"}]
execute as @a[team=shark,scores={sharkTimer=16},nbt={SelectedItem:{id:"minecraft:trident"}}] run title @s actionbar [{"color":"white","text":"["},{"color":"blue","text":"||||"},{"color":"gray","text":"|"},{"color":"white","text":"]"}]
execute as @a[team=shark,scores={sharkTimer=20..24},nbt={SelectedItem:{id:"minecraft:trident"}}] run title @s actionbar [{"color":"white","text":"["},{"bold":true,"color":"red","text":"|||||"},{"color":"white","text":"]"}]
execute as @a[team=shark,scores={sharkTimer=25..},nbt={SelectedItem:{id:"minecraft:trident"}}] run title @s actionbar [{"color":"white","text":"["},{"bold":true,"color":"blue","text":"|||||"},{"color":"white","text":"]"}]
#reset
execute as @a[team=shark,scores={sharkTimer=1..},nbt=!{SelectedItem:{id:"minecraft:trident"}}] run scoreboard players set @s sharkTimer 0
execute as @a[team=shark,scores={sharkTimer=40..}] run scoreboard players set @s sharkTimer 0
execute as @a[team=shark,scores={sharkTimer=0}] run kill @e[tag=shark]
execute as @a[team=shark,scores={sharkCrouch=0}] run scoreboard players set @s sharkTimer 0
execute as @a[team=shark,scores={sharkCrouch=1..}] run scoreboard players set @s sharkCrouch 0
execute as @a[team=shark,scores={sharkReset=0}] run scoreboard players set @s sharkTimer 0