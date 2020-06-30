tellraw @s {"color":"gold","text":"Error!","bold":"true"}
tellraw @s {"color":"gold","text":"Cannot return to survival mode while not within 10 blocks of a player that is not yourself."}
tellraw @s [{"color":"gold","text":"Dropping you at your "},{"italic":"true","text":"/trigger sp"},{"italic":"false","text":" invocation location."}]
function triggersp:sp_survival
function triggersp:spf_survival
scoreboard players set @s sp_on 0
scoreboard players set @s sp 0 
scoreboard players set @s spf 0
