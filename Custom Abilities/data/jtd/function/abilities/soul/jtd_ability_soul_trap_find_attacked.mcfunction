scoreboard players set #bool jtd.soul_trap_attack 0
execute on attacker store result score #bool jtd.soul_trap_attack if entity @s[tag=jtd.attacked_trap]

execute if score #bool jtd.soul_trap_attack matches 1 at @s run kill @n[tag=jtd.soul_trap,type=block_display]
execute if score #bool jtd.soul_trap_attack matches 1 at @s run kill @n[tag=jtd.soul_trap,type=interaction]
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 2
playsound minecraft:block.spawner.break ambient @a ~ ~ ~ 1 .5

execute if score #bool jtd.soul_trap_attack matches 1 run data remove entity @s attack