# Version 1.0
# * Any hoe in primary hand
# * All vanilla crops which has growth stages
# * Requested reverse of the DisplayFullyGrown data pack

execute if block ~ ~ ~ minecraft:wheat run function showgrown:lookatwheat
execute if block ~ ~ ~ minecraft:potatoes run function showgrown:lookatpotatoes
execute if block ~ ~ ~ minecraft:carrots run function showgrown:lookatcarrots
execute if block ~ ~ ~ minecraft:beetroots run function showgrown:lookatbeets
execute if block ~ ~ ~ minecraft:nether_wart run function showgrown:lookatwarts
execute if block ~ ~ ~ minecraft:air run title @s actionbar {"text":"", "color":"white"}

scoreboard players remove @s range 1
execute if score @s range matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function showgrown:look

scoreboard players set @s range 20


# Credit to people like these:
# Cloud Wolf : https://www.youtube.com/channel/UCZnBqVITQ0dloqUU0fGxY3g
# Legitimoose : https://www.youtube.com/channel/UCFkT7atm3HrSm5nYaXah5Ww

# To debug where the player is looking put this line in the loop
# particle crit ~ ~ ~ 0 0 0 0 1