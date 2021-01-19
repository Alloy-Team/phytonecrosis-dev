scoreboard players add @e[tag=plant,type=armor_stand] pc_id 0
scoreboard players add @e[tag=plantsumvil] pc_vid 0
execute as @e[scores={pc_id=0}] run scoreboard players add #maxid pc_id 1
scoreboard players operation @e[limit=1,scores={pc_id=0}] pc_id = #maxid pc_id
