# WOLF RESETS
    # KENJI
        # remove kenji and FX on death
            execute if score @s ed7.kenji_toggle matches 1..2 at @s run function ed7:kenji/ed7.kenji_despawn

    # KAZE
        # remove kaze and FX on death
            execute at @s run function ed7:kaze/ed7_kaze_despawn
        # reset sprint meter
            scoreboard players reset @s ed7.kaze_sprint_meter
        # reset sprint score
            scoreboard players reset @s ed7.player_sprint

    # KIRA
        # remove kira and FX on death
            execute at @s run function ed7:kira/ed7_kira_despawn

    # KENZO
        # remove kenzo and FX on death
            execute at @s run function ed7:kenzo/ed7_kenzo_despawn

# reset player rclick score
    scoreboard players reset @s ed7.player_rclick

# SET DEATH CHECK TO 1 TO PREVENT FUNCTION LOOPING
    scoreboard players set @s ed7.death_check 1