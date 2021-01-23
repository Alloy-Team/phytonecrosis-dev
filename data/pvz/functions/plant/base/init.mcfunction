summon villager ~ ~ ~ {Silent:1b,NoAI:1b,Tags:["pc_plantsumvil"]}
scoreboard players operation @e[type=villager,sort=nearest,limit=1,tag=pc_plantsumvil] pc_vid = @s ac_entity_id
tag @e[type=villager,sort=nearest,limit=1,tag=pc_plantsumvil] add pc_ptarget

data merge entity @s {Marker:1b}

tag @e[type=villager,sort=nearest,limit=1,tag=pc_plantsumvil] remove pc_plantsumvil
tag @s add pc_plant
tag @s remove pc_plantsum
