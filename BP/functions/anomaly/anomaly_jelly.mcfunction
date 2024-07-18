scoreboard objectives add anomaly_jelly dummy
execute as @a at @s run tag @e[type=cken:anomaly_jelly,r=1] add anomaly_jelly
execute as @e[type=ambullet:bolt] at @s run tag @e[type=cken:anomaly_jelly,r=1] add anomaly_jelly
tag @e[type=cken:anomaly_jelly,scores={anomaly_jelly=34..}] remove anomaly_jelly
execute as @e[type=cken:anomaly_jelly,scores={anomaly_jelly=1}] at @s run function anomaly/particle/anomaly_jelly
scoreboard players add @e[type=cken:anomaly_jelly,tag=anomaly_jelly] anomaly_jelly 1
scoreboard players set @e[type=cken:anomaly_jelly,tag=!anomaly_jelly] anomaly_jelly 0
execute as @e[type=cken:anomaly_jelly,tag=anomaly_jelly,scores={anomaly_jelly=1}] at @s run damage @a[r=1] 1