# if the player isn't dead, set the right-click score to 1 and revoke the bone advancement for re-use
    execute unless score @s ed7.player_health matches 0 run scoreboard players set @s ed7.player_rclick 1
    advancement revoke @s only ed7:ed7_advancement_bone