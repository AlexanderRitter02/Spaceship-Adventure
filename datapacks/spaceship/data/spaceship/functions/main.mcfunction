execute as @a[scores={playtime=1}] at @s run bossbar set minecraft:air players @s
execute as @a[scores={playtime=2000000000}] at @s run scoreboard players set @s playtime 2

#FalltoDeath
execute as @a store result score @s Height run data get entity @s Pos[1]
execute as @a[scores={Height=..0}] run tp @s ~0.5 300 ~0.5
execute as @a[scores={Height=..0}] run effect give @s resistance 7 100
execute as @a[scores={Height=290}] at @s run tag @s add Height
execute as @a[tag=Height,tag=vf_ground] at @s run effect clear
execute as @a[tag=Height,tag=vf_ground,tag=Delay1] at @s run effect give @s minecraft:resistance 1 2
execute as @a[tag=Height,tag=vf_ground,tag=Delay1] at @s run effect give @s instant_damage 1 3
execute as @a[tag=Height,tag=vf_ground,tag=Delay1] at @s run tag @s remove Height
execute as @a[tag=vf_ground,tag=Delay1] at @s run tag @s remove Delay1
execute as @a[tag=Height,tag=vf_ground] at @s run scoreboard players add @s Delay1 1
execute as @a[scores={Delay1=9..}] at @s run tag @s add Delay1
execute as @a[scores={Delay1=9..}] at @s run scoreboard players reset @s Delay1

#GravityMachine
effect give @e[type=bat] invisibility 1 1
execute as @e[type=bat] at @s run setblock ~ ~ ~ black_terracotta
execute as @e[type=bat] at @s run summon armor_stand ~ ~ ~ {Tags:["GravityMachine"],NoGravity:1b,Invisible:1b}
kill @e[type=bat]

execute as @e[tag=GravityMachine] at @s if block ~ ~ ~ air run kill @s

tag @a add NoGravity
execute as @e[tag=GravityMachine] at @s run tag @a[distance=..10] remove NoGravity

#Setup
effect give @a[tag=NoGravity] jump_boost 1 1 true


# Airfiller Item (Fish bucket with salmon)
effect give @e[type=salmon,tag=airfill_start] invisibility 1 1
execute at @e[type=salmon,tag=airfill_start] align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,CustomName:'{"text":"airfill"}'}
execute as @e[type=salmon,tag=airfill_start] run scoreboard players set count airfill 0
gamerule doMobLoot false
kill @e[type=salmon,tag=airfill_start]
gamerule doMobLoot true

function spaceship:airfill_exe

# Luftflaschen
#replaceitem entity @s weapon.offhand diamond_hoe

#Jetpack
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Slot:102b}]},scores={jump=1..,fuel=1..}] at @s run effect give @s levitation 1 5 true
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Slot:102b}]},scores={jump=1..,fuel=1..}] at @s run particle minecraft:large_smoke ~ ~0.5 ~ 0 -0.1 0 0.01 5
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Slot:102b}]},scores={jump=0}] at @s run effect clear @s levitation
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Slot:102b}]},scores={jump=1..,fuel=1..}] run scoreboard players remove @s fuel 1
execute as @a run title @s actionbar ["(",{"score":{"name":"@s","objective":"fuel"}},"/100)"]

execute as @a run scoreboard players set @s jump 0


# bow glass break
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~1 ~ ~ #spaceship:glass run setblock ~1 ~ ~ void_air destroy
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~1 ~ ~ void_air run kill @s
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~-1 ~ ~ #spaceship:glass run setblock ~-1 ~ ~ void_air destroy
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~-1 ~ ~ void_air run kill @s
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~ ~ ~1 #spaceship:glass run setblock ~ ~ ~1 void_air destroy
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~ ~ ~1 void_air run kill @s
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~ ~ ~-1 #spaceship:glass run setblock ~ ~ ~-1 void_air destroy
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~ ~ ~-1 void_air run kill @s
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~ ~1 ~ #spaceship:glass run setblock ~ ~1 ~ void_air destroy
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~ ~0 ~ void_air run kill @s
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~ ~-1 ~ #spaceship:glass run setblock ~ ~-1 ~ void_air destroy
execute as @e[type=arrow,nbt={inGround:1b}] at @s if block ~ ~ ~-1 void_air run kill @s


# Luft und Raumanzug
execute as @a at @s if block ~ ~1 ~ air unless score @s air matches ..0 run scoreboard players remove @s air 1
# bossbars
bossbar set air100 players @a[scores={air=191..200}]
bossbar set air90 players @a[scores={air=171..190}]
bossbar set air80 players @a[scores={air=151..170}]
bossbar set air70 players @a[scores={air=131..150}]
bossbar set air60 players @a[scores={air=111..130}]
bossbar set air50 players @a[scores={air=91..110}]
bossbar set air40 players @a[scores={air=71..90}]
bossbar set air30 players @a[scores={air=51..70}]
bossbar set air20 players @a[scores={air=31..50}]
bossbar set air10 players @a[scores={air=11..30}]
bossbar set air0 players @a[scores={air=0..10}]
