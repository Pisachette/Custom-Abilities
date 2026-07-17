# detect when the player right-clicks with the hellfire item
    execute if score @s kano.health matches 1.. run scoreboard players set @s kano.rclick_hellfire 1
    advancement revoke @s only kano:kano_advancement_hellfire