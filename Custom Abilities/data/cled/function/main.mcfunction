# mechanics
    # item toggle mechanics
        execute as @a[team=Cledward] at @s run function cled:mechanics/toggle_ball

    # offhand ability mechanics
        execute as @a[team=Cledward] at @s run function cled:mechanics/offhand/offhand_ability_execute

    # right click ability mechanics
        execute as @a[team=Cledward] at @s run function cled:abilities/rclick/rclick_ability_execute
        # right click ability fx
            function cled:abilities/rclick/rclick_ability_fx

    # reset scores if player dies
        execute as @a[team=Cledward] unless score @s cled.health matches 1.. unless score @s cled.death_check matches 1.. run function cled:mechanics/death
    
    # reset death check when player respawns
        execute as @a[team=Cledward] if score @s cled.death_check matches 1.. if score @s cled.health matches 1.. run scoreboard players reset @s cled.death_check

# make sneaking boolean
    execute as @a[team=Cledward] if score @s cled.sneak matches 1.. run scoreboard players reset @s cled.sneak