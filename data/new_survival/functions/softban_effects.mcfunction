title @s times 0 20 0
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
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s "IMPORTANT: The ban timer only runs down when"
tellraw @s "your account is logged on."
tellraw @s ""
tellraw @s "When the ban time is over, run \"/trigger sp\""
tellraw @s "in order to return to survival mode."
tellraw @s ""
tellraw @s "In the mean time, reflect on your poor choices,"
tellraw @s "and try to avoid them in the future"
tellraw @s "so you won't get banned again."
tellraw @s ""
tellraw @s {"color":"yellow","text":"STAY CONNECTED FOR THE BAN TIME TO RUN DOWN.","bold":"true"}
gamemode spectator @s

