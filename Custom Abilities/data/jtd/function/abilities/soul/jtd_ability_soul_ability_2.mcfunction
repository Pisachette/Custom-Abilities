summon block_display ~-.5 ~-.5 ~-.5 {CustomNameVisible:0b,Tags:["jtd.soul_trap"],CustomName:{"bold":true,"color":"aqua","text":"Soul Trap"},block_state:{Name:"minecraft:spawner"}}
summon interaction ~ ~-.5 ~ {width:1f,height:1f,Tags:["jtd.soul_trap","jtd.soul_trap_interaction"]}
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 2
playsound minecraft:block.spawner.break ambient @a ~ ~ ~ 1 .5
scoreboard players remove @s jtd.manaBank 16