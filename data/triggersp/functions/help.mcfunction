# Toggles the trigger on and off

tellraw @s ["",{"text":"Trigger SP help:","color":"yellow","bold":"true"}]
tellraw @s ["",{"text":"1. ","color":"green"},{"text":"Trigger SP","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger sp"},"hoverEvent":{"action":"show_text","value":"Click to Trigger SP (/trigger sp)"}}]
tellraw @s ["",{"text":"2. ","color":"green"},{"text":"Trigger SP Fly","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger spf"},"hoverEvent":{"action":"show_text","value":"Click to Trigger SPF (/trigger spf)"}}]
