# play conversion sound
    playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2
# turn zombie to players team
    team join Cledward @n[type=#zombies]
# make zombies not despawn naturally
    data merge entity @n[type=#zombies,team=Cledward] {PersistenceRequired:1b}
# make zombies glow
    effect give @n[type=#zombies,team=Cledward] glowing infinite 0 true
# give zombies fire resistance
    effect give @n[type=#zombies,team=Cledward] fire_resistance infinite 255 true