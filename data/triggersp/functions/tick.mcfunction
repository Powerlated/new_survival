
# Handle Trigger SP
scoreboard players enable @a sp

execute as @a[scores={sp=1..}] if entity @s[gamemode=survival] run function triggersp:sp_spectator
#execute as @a if score @s sp matches 1.. if entity @s[gamemode=spectator] run function triggersp:sp_survival
execute as @a[scores={sp=1..,sp_on=1}] at @s if entity @s[gamemode=spectator] anchored eyes unless block ~ ~ ~ air run function triggersp:sp_survival_err
execute as @a[scores={sp=1..,sp_on=1}] at @s if entity @s[gamemode=spectator] anchored eyes if block ~ ~ ~ air run function triggersp:sp_survival

execute as @a[scores={sp=1..,sp_on=0}] at @s if entity @s[gamemode=spectator] anchored eyes unless block ~ ~ ~ air run function triggersp:sp_survival_err
execute as @a[scores={sp=1..,sp_on=0}] at @s if entity @s[gamemode=spectator] anchored eyes if block ~ ~ ~ air run function triggersp:spf_survival

scoreboard players set @a sp 0

# Handle Trigger SPF
scoreboard players enable @a spf

execute as @a[scores={spf=1..,sp_on=0}] if entity @s[gamemode=survival] run function triggersp:spf_spectator
execute as @a[scores={spf=1..,sp_on=0}] at @s if entity @s[gamemode=spectator] run function triggersp:spf_survival

execute as @a[scores={spf=1..,sp_on=1}] at @s if entity @s[gamemode=spectator] anchored eyes unless block ~ ~ ~ air run function triggersp:sp_survival_err
execute as @a[scores={spf=1..,sp_on=1}] at @s if entity @s[gamemode=spectator] anchored eyes if block ~ ~ ~ air run function triggersp:sp_survival

scoreboard players set @a spf 0

# Handle Trigger SP Help
scoreboard players enable @a sp_help

execute as @a[scores={sp_help=1..}] run function triggersp:help

scoreboard players set @a sp_help 0

# Handle Trigger Spawn
scoreboard players enable @a spawn

execute as @a[scores={spawn=1..}] run tp -344 63 -167
scoreboard players set @a spawn 0

# Spectator FX
execute as @a[gamemode=spectator,scores={sp_on=1..}] at @s run effect give @s minecraft:blindness 4 10
execute as @a[gamemode=spectator,scores={sp_on=1..}] at @s run effect give @s minecraft:night_vision 4 10
