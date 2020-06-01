execute if score count airfill matches ..1500 positioned ~1 ~ ~ if block ~ ~ ~ air unless entity @e[name=airfill,distance=..0.2] run summon area_effect_cloud ~ ~ ~ {Duration:600,CustomName:'{"text":"airfill"}'}
execute if score count airfill matches ..1500 positioned ~-1 ~ ~ if block ~ ~ ~ air unless entity @e[name=airfill,distance=..0.2] run summon area_effect_cloud ~ ~ ~ {Duration:600,CustomName:'{"text":"airfill"}'}
execute if score count airfill matches ..1500 positioned ~ ~1 ~ if block ~ ~ ~ air unless entity @e[name=airfill,distance=..0.2] run summon area_effect_cloud ~ ~ ~ {Duration:600,CustomName:'{"text":"airfill"}'}
execute if score count airfill matches ..1500 positioned ~ ~-1 ~ if block ~ ~ ~ air unless entity @e[name=airfill,distance=..0.2] run summon area_effect_cloud ~ ~ ~ {Duration:600,CustomName:'{"text":"airfill"}'}
execute if score count airfill matches ..1500 positioned ~ ~ ~1 if block ~ ~ ~ air unless entity @e[name=airfill,distance=..0.2] run summon area_effect_cloud ~ ~ ~ {Duration:600,CustomName:'{"text":"airfill"}'}
execute if score count airfill matches ..1500 positioned ~ ~ ~-1 if block ~ ~ ~ air unless entity @e[name=airfill,distance=..0.2] run summon area_effect_cloud ~ ~ ~ {Duration:600,CustomName:'{"text":"airfill"}'}

tag @s add done
scoreboard players add count airfill 1
