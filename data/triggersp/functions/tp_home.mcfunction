function triggersp:spf_survival
function sh:home
tellraw @s {"color":"gold","text":"Your scoreboard variables were in a state only obtainable after a ban has been cleared."}
tellraw @s {"color":"gold","text":"Dropping you into your home."}
scoreboard players set @s sp 0 
