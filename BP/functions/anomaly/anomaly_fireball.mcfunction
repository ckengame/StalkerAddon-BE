scoreboard objectives add anomaly_fireball dummy
execute as @a at @s run tag @e[type=cken:anomaly_fireball,r=2] add anomaly_fireball
execute as @e[type=ambullet:bolt] at @s run tag @e[type=cken:anomaly_fireball,r=2] add anomaly_fireball
tag @e[type=cken:anomaly_fireball,scores={anomaly_fireball=220..}] remove anomaly_fireball
execute as @e[type=cken:anomaly_fireball,scores={anomaly_fireball=1}] at @s run function anomaly/particle/anomaly_fireball_blow2
scoreboard players add @e[type=cken:anomaly_fireball,tag=anomaly_fireball] anomaly_fireball 1
scoreboard players set @e[type=cken:anomaly_fireball,tag=!anomaly_fireball] anomaly_fireball 0
execute as @e[type=cken:anomaly_fireball,tag=anomaly_fireball] at @s run damage @a[r=2] 1