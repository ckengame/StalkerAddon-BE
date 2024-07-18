scoreboard objectives add anomaly_frying dummy
execute as @a at @s run tag @e[type=cken:anomaly_frying,r=3] add anomaly_frying
execute as @e[type=ambullet:bolt] at @s run tag @e[type=cken:anomaly_frying,r=3] add anomaly_frying
tag @e[type=cken:anomaly_frying,scores={anomaly_frying=100..}] remove anomaly_frying
execute as @e[type=cken:anomaly_frying,scores={anomaly_frying=1}] at @s run function anomaly/particle/anomaly_frying
scoreboard players add @e[type=cken:anomaly_frying,tag=anomaly_frying] anomaly_frying 1
scoreboard players set @e[type=cken:anomaly_frying,tag=!anomaly_frying] anomaly_frying 0
execute as @e[type=cken:anomaly_frying,tag=anomaly_frying] at @s run damage @a[r=3] 1