scoreboard players add @s pc_pshoot 1
execute at @s run tp @s ^ ^ ^ facing entity @e[limit=1,sort=nearest,type=#alloycore:undead,distance=..20]
execute at @s[scores={pc_pshoot=1}] if entity @e[limit=1,sort=nearest,type=#alloycore:undead,distance=..20] run summon minecraft:armor_stand ^ ^ ^0.25 {NoGravity:1b,Marker:0b,Tags:["pc_pea"]}


scoreboard players reset @e[tag=pc_plant_peashooter,scores={pc_pshoot=50..}] pc_pshoot
