# Handle Trigger fc
scoreboard players enable @a fc

execute as @a[scores={fc=1..}] if entity @s[gamemode=survival] run function triggersp:spf_spectator
execute as @a[scores={fc=1..}] at @s if entity @s[gamemode=spectator] run function triggersp:spf_survival

# Handle Freecam Help
scoreboard players enable @a freecam_help

execute as @a[scores={freecam_help=1..}] run function triggersp:help

scoreboard players set @a freecam_help 0
