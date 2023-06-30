execute if score @s freecam_dim matches -1 in minecraft:the_nether run tp @s ~ ~ ~
execute if score @s freecam_dim matches 0 in minecraft:overworld run tp @s ~ ~ ~
execute if score @s freecam_dim matches 1 in minecraft:the_end run tp @s ~ ~ ~

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["freecam_home"],NoGravity:1b,Invisible:1b,Marker:1b}
tag @s add freecam_tpHome

execute as @e[tag=freecam_home,sort=nearest,limit=1] at @s run function freecam:pos
