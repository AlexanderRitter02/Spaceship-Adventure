execute if score count airfill matches ..1500 as @e[name=airfill,tag=!done] at @s run function spaceship:airfill
execute if score count airfill matches 1501.. run kill @e[name=airfill]
execute if score count airfill matches 1501.. run say Failed
execute if score count airfill matches 1501.. run scoreboard players set count airfill -2

execute if score count airfill = count_old airfill run say Finished
execute if score count airfill = count_old airfill at @e[name=airfill,tag=done] run setblock ~ ~ ~ cave_air
execute if score count airfill = count_old airfill as @e[name=airfill,tag=done] run kill @s
execute if score count airfill = count_old airfill run scoreboard players set count airfill -1
execute unless score count airfill matches ..-1 run scoreboard players operation count_old airfill = count airfill
