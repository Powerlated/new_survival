# Handle Trigger fc
scoreboard players enable @a fc

execute as @a[scores={fc=1..}] if entity @s[gamemode=survival] run function freecam:spf_spectator
execute as @a[scores={fc=1..}] at @s if entity @s[gamemode=spectator] run function freecam:spf_survival

# Handle Freecam Help
scoreboard players enable @a freecam_help

execute as @a[scores={freecam_help=1..}] run function freecam:help

scoreboard players set @a freecam_help 0
