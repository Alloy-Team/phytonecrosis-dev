tp @s ^ ^ ^-0.35
effect give @e[tag=!pc_plant,limit=1,sort=nearest,dx=0,type=#alloycore:undead] instant_health 1 0 true

execute unless entity @e[distance=..20,type=!#alloycore:nonliving] run kill @s
