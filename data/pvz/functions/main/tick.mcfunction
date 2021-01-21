# Plant Initialization (Villager Summon/Link)
execute as @e[tag=pc_plantsum,type=armor_stand] at @s run function pvz:plant/base/init

# Plant Main File (Runs every tick for all initialized plants)
execute as @e[tag=pc_plant,type=armor_stand] at @s run function pvz:plant/base/main
