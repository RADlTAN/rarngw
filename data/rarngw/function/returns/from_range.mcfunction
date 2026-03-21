$scoreboard players set ::global rarngw--parameters.min $(min)
$scoreboard players set ::global rarngw--parameters.max $(max)

execute unless score ::global rarngw--parameters.max > ::global rarngw--parameters.min run return fail

execute store result score ::global rarngw--return_value run function rarngw:returns/raw

scoreboard players operation ::global rarngw--parameters.max -= ::global rarngw--parameters.min
scoreboard players add ::global rarngw--parameters.max 1

scoreboard players operation ::global rarngw--return_value %= ::global rarngw--parameters.max

scoreboard players operation ::global rarngw--return_value += ::global rarngw--parameters.min

return run scoreboard players get ::global rarngw--return_value