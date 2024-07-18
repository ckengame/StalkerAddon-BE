scoreboard objectives add voronka dummy
execute as @e[type=ambullet:bolt] at @s run tag @e[type=cken:anomaly_voronka,r=3] add voronka
tag @e[type=cken:anomaly_voronka,scores={voronka=15..},tag=voronka] remove voronka
execute as @e[type=cken:anomaly_voronka,tag=voronka] at @s run scoreboard players add @s voronka 1
execute as @e[type=cken:anomaly_voronka,tag=!voronka] at @s run scoreboard players set @s voronka 0
execute as @e[type=cken:anomaly_voronka,scores={voronka=2..},tag=voronka] at @s run kill @e[type=ambullet:bolt,r=6]
execute as @e[type=cken:anomaly_voronka,scores={voronka=2},tag=voronka] at @s run function anomaly/particle/anomaly_voronka

scoreboard objectives add voronka_taleover dummy
scoreboard objectives add voronka_time3 dummy
execute as @a at @s run tag @e[type=cken:anomaly_voronka,r=3] add voronka_taleover
scoreboard players add @e[type=cken:anomaly_voronka,tag=voronka_taleover] voronka_time3 1
execute as @e[type=cken:anomaly_voronka,scores={voronka_time3=2}] at @s run tp @a[r=3] ~~~0.01
scoreboard players set @e[type=cken:anomaly_voronka,scores={voronka_time3=15..}] voronka_time3 0
scoreboard players set @e[type=cken:anomaly_voronka,tag=!voronka_taleover] voronka_time3 0
execute as @e[type=cken:anomaly_voronka,tag=voronka_taleover] at @s run scoreboard objectives add voronka_time4 dummy
scoreboard players add @e[type=cken:anomaly_voronka] voronka_time4 1
scoreboard players set @e[type=cken:anomaly_voronka,scores={voronka_time4=100..}] voronka_time4 0
execute as @e[type=cken:anomaly_voronka,scores={voronka_time4=1}] at @s run playsound anomaly.gravi_blowout6 @a[r=6]
execute as @e[type=cken:anomaly_voronka,scores={voronka_time4=40}] at @s run particle ckenp:anomaly_voronka_windspeed1
execute as @e[type=cken:anomaly_voronka,scores={voronka_time4=40}] at @s run damage @a[r=2] 6
execute as @e[type=cken:anomaly_voronka,scores={voronka_time4=99..}] at @s run scoreboard objectives remove voronka_time4
tag @e[type=cken:anomaly_voronka,tag=voronka_taleover] remove voronka_taleover

scoreboard objectives add voronka_wind dummy
scoreboard players add @e[type=cken:anomaly_voronka] voronka_wind 1
scoreboard players set @e[type=cken:anomaly_voronka,scores={voronka_wind=21}] voronka_wind 0
execute as @e[type=cken:anomaly_voronka,scores={voronka_wind=2}] at @s run particle ckenp:anomaly_voronka_wind1