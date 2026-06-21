advancement revoke @s only jtd:jtd_advancement_soul_trap

tag @s add jtd.attacked_trap
execute as @e[type=interaction,distance=..6] run function jtd:abilities/soul/jtd_ability_soul_trap_find_attacked
tag @s remove jtd.attacked_trap