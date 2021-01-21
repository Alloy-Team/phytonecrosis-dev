# Tags the linked villager with pc_ptargetcon. Don't worry about multiple plants selecting the same villager, because the tag is removed in the same file. Any code between that will
# select the linked villager, though.
#
execute at @e[tag=pc_ptarget] if score @e[tag=pc_ptarget,sort=nearest,limit=1] pc_vid = @s ac_entity_id run tag @e[tag=pc_ptarget,sort=nearest,limit=1] add pc_ptargetcon

tp @e[tag=pc_ptargetcon] ~ ~ ~ ~ ~


# > > > Specified Plants
# Peashooter (Example, remove these parenthesis when you actually code it kaz lmao)
execute as @s[tag=pc_plant_peashooter] run function pvz:plant/peashooter/main


# Removes pc_ptargetcon from all plant villagers.
tag @e[tag=pc_ptarget] remove pc_ptargetcon