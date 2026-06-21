scoreboard players add @s dino.actionbar_loop 1
execute if score @s dino.actionbar_loop matches 1 run title @s actionbar [{"bold":true,"color":"red","text":"JUMP "},{"bold":false,"color":"white","text":"to explode!"}]
execute if score @s dino.actionbar_loop matches 11 run title @s actionbar [{"bold":true,"color":"dark_red","text":"JUMP "},{"bold":false,"color":"gray","text":"to explode!"}]
execute if score @s dino.actionbar_loop matches 21 run scoreboard players reset @s dino.actionbar_loop