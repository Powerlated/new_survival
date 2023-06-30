execute store result entity @s Pos[0] double 1 run scoreboard players get @p freecam_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @p freecam_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @p freecam_z
execute store result entity @s Rotation[0] float 1 run scoreboard players get @p freecam_yr
execute store result entity @s Rotation[1] float 1 run scoreboard players get @p freecam_xr

execute at @s run tp @s ~0.5 ~ ~0.5
execute at @s run tp @a[tag=freecam_tpHome] @s

tag @a remove freecam_tpHome

kill @s