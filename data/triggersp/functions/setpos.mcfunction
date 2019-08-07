# From SETHOME VANILLA TWEAKS

# Sets the location when SPF activated
execute store result score @s spf_x run data get entity @s Pos[0]
execute store result score @s spf_y run data get entity @s Pos[1]
execute store result score @s spf_z run data get entity @s Pos[2]
execute store result score @s spf_yr run data get entity @s Rotation[0]
execute store result score @s spf_xr run data get entity @s Rotation[1]
execute store result score @s spf_dim run data get entity @s Dimension
scoreboard players operation @s spf_y += #spf_y spf_y

execute if score @s spf_x matches 0 if score @s spf_y matches 0 if score @s spf_z matches 0 run tellraw @s {"text":"You may not run \"/trigger spf\" at 0 0 0, it has been moved to 0 0 1","color":"yellow"}
execute if score @s spf_x matches 0 if score @s spf_y matches 0 if score @s spf_z matches 0 run scoreboard players set @s spf_z 1

scoreboard players operation @s spf_limitShow = #spf_limit spf_limit
scoreboard players operation @s spf_limitShow -= @s spf_limit

#execute if score #spf_limit spf_limit matches 1.. run tellraw @a ["",{"text":"Home set! Sethomes remaining: ","color":"yellow"},{"score":{"name":"@s","objective":"spf_limitShow"},"color":"red"}]
#execute if score #spf_limit spf_limit matches ..0 run tellraw @a ["",{"text":"Home set! Sethomes remaining: ","color":"yellow"},{"text":"∞","color":"red"}]

execute if score #spf_limit spf_limit matches 1.. run scoreboard players add @s spf_limit 1
scoreboard players set @s sethome 0