execute as @a at @s anchored eyes positioned ^ ^ ^0.5 unless block ~ ~ ~ air unless block ~ ~ ~ tallgrass run event entity @s gun:barikada
execute as @a at @s anchored eyes positioned ^ ^ ^0.5 if block ~ ~ ~ tallgrass run event entity @s gun:barikada_default
execute as @a at @s anchored eyes positioned ^ ^ ^0.5 if block ~ ~ ~ air run event entity @s gun:barikada_default