title @s times 0 1000 0
title @s title {"text":"YOU ARE BANNED","color":"dark_red"}
title @s[scores={ns_softban_hrs=2..}] subtitle [{"text":"TIME LEFT: ","color":"dark_red"},{"score":{"name":"@s","objective":"ns_softban_hrs"},"color":"red"},{"text":" HOURS","color":"dark_red"}]
title @s[scores={ns_softban_hrs=1}] subtitle [{"text":"TIME LEFT: ","color":"dark_red"},{"score":{"name":"@s","objective":"ns_softban_hrs"},"color":"red"},{"text":" HOUR","color":"dark_red"}]
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s {"color":"red","bold":"true","text":"-------- YOU ARE BANNED! --------"} 
tellraw @s ""
tellraw @s [{"text":"TICKS LEFT: ","color":"dark_red","bold":"true"},{"color":"red","bold":"false","score":{"name":"@s","objective":"ns_softban"}}]
tellraw @s ""
tellraw @s "IMPORTANT: The ban timer only runs down when"
tellraw @s "your account is logged on."
tellraw @s ""
tellraw @s [{"color":"white","text":"When the ban time is over, run \""},{"text":"/trigger sp","color":"gold","clickEvent":{"action":"run_command","value":"/trigger sp"}},{"color":"white","text":"\""}]
tellraw @s "in order to return to survival mode."
tellraw @s ""
tellraw @s "In the mean time, reflect on your poor choices,"
tellraw @s "and try to avoid them in the future"
tellraw @s "so you won't get banned again."
tellraw @s ""
tellraw @s {"color":"yellow","text":"STAY CONNECTED FOR THE BAN TIME TO RUN DOWN.","bold":"true"}
tellraw @s ""
tellraw @s {"color":"gold","bold":"true","text":"^^^ OPEN CHAT TO SEE FULL INFO ^^^"}

scoreboard players set @s sp_on 0
scoreboard players set @s spf_on 0

gamemode spectator @s

