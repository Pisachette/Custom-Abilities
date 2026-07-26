# set rclick score to 1 for bool
    execute unless score @s ntd.health matches 0 run scoreboard players set @s ntd.rclick_dragonheart 1
# revoke advancement for re-use
    advancement revoke @s only ntd:ntd_advancement_dragonheart