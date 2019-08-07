execute store result entity @s Pos[0] double 1 run scoreboard players get @p spf_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @p spf_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @p spf_z
execute store result entity @s Rotation[0] float 1 run scoreboard players get @p spf_yr
execute store result entity @s Rotation[1] float 1 run scoreboard players get @p spf_xr

execute at @s run tp @s ~0.5 ~ ~0.5
execute at @s run tp @a[tag=spf_tpHome] @s

tag @a remove spf_tpHome

kill @s