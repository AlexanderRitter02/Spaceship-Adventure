# Reload
say Spaceship reloaded!

# Gamerules
gamerule spawnRadius 0

# Scoreboards
scoreboard objectives add Height dummy
scoreboard objectives add Delay1 dummy
scoreboard objectives add playtime minecraft.custom:minecraft.play_one_minute
scoreboard objectives add jump minecraft.custom:minecraft.sneak_time
scoreboard objectives add fuel dummy
scoreboard objectives add air dummy
scoreboard objectives add airfill dummy
scoreboard players set count airfill 0

#Book
execute as @a run give @s minecraft:written_book{title:"",author:"",pages:['{"text":"You\'re on a space mission to Saturn, but sadly you\'re out of gas. Fortunately you made it to a space station in time.Unfortunately, this station is infested with mutants. Now you have to try with the remaining stuff to get enough dragons breath to get to Saturn.","italic":false}']} 1

# Spawner Block
setblock 0 120 -17 minecraft:spawner{Delay:10,RequiredPlayerRange:20,SpawnData:{id:"minecraft:zombie",NoGravity:1b,Silent:1b,CustomNameVisible:1b,Health:5f,CustomName:'{"text":"Mutant","color":"green","bold":true}',HandItems:[{id:"minecraft:spruce_wood",Count:3b,tag:{display:{Name:'{"text":"Lost Wood","color":"dark_purple","italic":false}'},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}},{}],HandDropChances:[66.000F,0.085F]}} destroy

# Create bossbars for air display
bossbar add air100 {"text":"Air"}
bossbar set air100 color blue
bossbar set air100 value 100
bossbar set air100 style notched_10
bossbar add air90 {"text":"Air"}
bossbar set air90 color blue
bossbar set air90 value 90
bossbar set air90 style notched_10
bossbar add air80 {"text":"Air"}
bossbar set air80 value 80
bossbar set air80 color blue
bossbar set air80 style notched_10
bossbar add air70 {"text":"Air"}
bossbar set air70 value 70
bossbar set air70 color blue
bossbar set air70 style notched_10
bossbar add air60 {"text":"Air"}
bossbar set air60 value 60
bossbar set air60 color blue
bossbar set air60 style notched_10
bossbar add air50 {"text":"Air"}
bossbar set air50 value 50
bossbar set air50 color blue
bossbar set air50 style notched_10
bossbar add air40 {"text":"Air"}
bossbar set air40 value 40
bossbar set air40 color blue
bossbar set air40 style notched_10
bossbar add air30 {"text":"Air"}
bossbar set air30 value 30
bossbar set air30 color blue
bossbar set air30 style notched_10
bossbar add air20 {"text":"Air"}
bossbar set air20 value 20
bossbar set air20 color blue
bossbar set air20 style notched_10
bossbar add air10 {"text":"Air"}
bossbar set air10 value 10
bossbar set air10 color blue
bossbar set air10 style notched_10
bossbar add air0 {"text":"Air"}
bossbar set air0 value 0
bossbar set air0 color blue
bossbar set air0 style notched_10
