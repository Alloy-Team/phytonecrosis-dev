execute at @e[tag=plantsum] run summon villager ~ ~ ~ {Tags:["plantsumvil","plant"]}
execute as @e[tag=plantsum] run scoreboard players operation @e[tag=plantsumvil,sort=nearest,limit=1] pc_vid = @s pc_id
execute as @e[limit=1,tag=plantsumvil] if score @s pc_vid = @e[limit=1,tag=plant,type=armor_stand] pc_id run tag @s add ptarget
execute as @e[tag=plantsum,limit=1] run scoreboard players operation @e[tag=plantsumvil,sort=nearest,limit=1] pc_vid = @s pc_id


execute as @e[tag=plant,type=armor_stand] at @s run tp @e[tag=ptarget,limit=1] ~ ~ ~
