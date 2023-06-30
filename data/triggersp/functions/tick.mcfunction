# Handle Trigger SPF
scoreboard players enable @a spf

execute as @a[scores={spf=1..}] if entity @s[gamemode=survival] run function triggersp:spf_spectator
execute as @a[scores={spf=1..}] at @s if entity @s[gamemode=spectator] run function triggersp:spf_survival

execute as @a[scores={spf=1..}] at @s if entity @s[gamemode=spectator] anchored eyes unless block ~ ~ ~ air run function triggersp:sp_survival_err
execute as @a[scores={spf=1..}] at @s if entity @s[gamemode=spectator] anchored eyes if block ~ ~ ~ air run function triggersp:sp_survival

scoreboard players set @a spf 0

# Handle Trigger SP Help
scoreboard players enable @a sp_help

execute as @a[scores={sp_help=1..}] run function triggersp:help

scoreboard players set @a sp_help 0

# Spectator FX
#execute as @a[gamemode=spectator,scores={sp_on=1..}] at @s run effect give @s minecraft:blindness 4 10
#execute as @a[gamemode=spectator,scores={sp_on=1..}] at @s run effect give @s minecraft:night_vision 4 10
