effect give @a haste 1000000 2 true

# Creepers do no damage.
execute as @e[type=creeper] run data merge entity @s {ExplosionRadius:0}

# Handle Trigger
scoreboard players enable @a sp

execute as @a if score @s sp matches 1.. if entity @s[gamemode=survival] run function new_survival:sp_spectator
execute as @a if score @s sp matches 1.. if entity @s[gamemode=spectator] run function new_survival:sp_survival

scoreboard players set @a sp 0



