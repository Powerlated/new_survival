# From SETHOME VANILLA TWEAKS

# Sets the location when fc activated
execute store result score @s freecam_x run data get entity @s Pos[0]
execute store result score @s freecam_y run data get entity @s Pos[1]
execute store result score @s freecam_z run data get entity @s Pos[2]
execute store result score @s freecam_yr run data get entity @s Rotation[0]
execute store result score @s freecam_xr run data get entity @s Rotation[1]
execute store result score @s freecam_dim run data get entity @s Dimension
scoreboard players operation @s freecam_y += #freecam_y freecam_y

execute if score @s freecam_x matches 0 if score @s freecam_y matches 0 if score @s freecam_z matches 0 run tellraw @s {"text":"You may not run \"/trigger freecam\" at 0 0 0, it has been moved to 0 0 1","color":"yellow"}
execute if score @s freecam_x matches 0 if score @s freecam_y matches 0 if score @s freecam_z matches 0 run scoreboard players set @s freecam_z 1

scoreboard players set @s sethome 0