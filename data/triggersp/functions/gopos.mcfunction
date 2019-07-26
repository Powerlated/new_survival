execute if score @s spf_dim matches -1 in minecraft:the_nether run tp @s ~ ~ ~
execute if score @s spf_dim matches 0 in minecraft:overworld run tp @s ~ ~ ~
execute if score @s spf_dim matches 1 in minecraft:the_end run tp @s ~ ~ ~

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["spf_home"],NoGravity:1b,Invisible:1b,Marker:1b}
tag @s add spf_tpHome

execute as @e[tag=spf_home,sort=nearest,limit=1] at @s run function triggersp:pos

scoreboard players operation @s spf_cooldown = #spf_cooldown spf_cooldown