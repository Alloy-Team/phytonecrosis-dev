scoreboard players add @s pc_pshoot 1
execute at @s run tp @s ^ ^ ^ facing entity @e[limit=1,sort=nearest,type=#alloycore:undead,distance=..20]
execute at @s[scores={pc_pshoot=1}] run summon minecraft:armor_stand ^ ^ ^0.25 {NoGravity:1b,Marker:0b,Tags:["pc_pea"]}

execute as @s at @e[tag=pc_pea] run tp @e[limit=1,sort=nearest] ^ ^ ^-0.35

execute at @e[tag=pc_pea] run effect give @e[limit=1,sort=nearest,dx=0,type=#alloycore:undead] instant_health 1 0 true
execute at @e[tag=pc_pea] run effect give @e[limit=1,sort=nearest,dx=0,type=!#alloycore:undead] instant_damage 1 0 true
execute as @e[tag=pc_pea] at @s unless entity @e[distance=..20,type=!#alloycore:nonliving] run kill @s

scoreboard players reset @e[tag=pc_plant_peashooter,scores={pc_pshoot=50..}] pc_pshoot
