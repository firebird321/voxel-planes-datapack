#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[a6m2-root,a6m2,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-weapon1,has-weapon2,main-weapon1,main-weapon2,main-weapon3,tier2],CustomName:"{\"text\":\"a6m2\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["20mm gun","7.7mm gun","bomb"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[a6m2,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:12f,Attributes:[{Name:"generic.max_health",Base:12}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[a6m2,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["a6m2-body","a6m2",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:87,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["a6m2-hitbox","a6m2",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:110f,Attributes:[{Name:"generic.max_health",Base:110}]}
summon armor_stand ~ ~ ~ {Tags:["a6m2-hitbox","a6m2",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:100f,Attributes:[{Name:"generic.max_health",Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["a6m2-hitbox","a6m2",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:90f,Attributes:[{Name:"generic.max_health",Base:90}]}
summon armor_stand ~ ~ ~ {Tags:["a6m2-hitbox","a6m2",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:90f,Attributes:[{Name:"generic.max_health",Base:90}]}
summon armor_stand ~ ~ ~ {Tags:["a6m2-hitbox","a6m2",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["a6m2-hitbox","a6m2",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["a6m2-hitbox","a6m2",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["a6m2-hitbox","a6m2",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:120f,Attributes:[{Name:"generic.max_health",Base:120}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.accelerate 49
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.resistance 28
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.energy-loss 6
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.deaccelerate 64
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.max-speed 18500
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.cruise-speed 11500
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.takeoff-speed 3800
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.stall-speed 3600
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.prop-strt-min 1600
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.prop-strt-max 1700
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.prop-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.gear-ret-min 5100
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.gear-ret-max 5300
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.gear-po-min 4800
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.gear-po-max 5000

scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.landing-pitch -1100
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.AngX -1100
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.pitch-speed 200
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.yaw-speed 200
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.roll-speed 400

scoreboard players set @e[tag=plane-init,tag=a6m2-body] vp.parking-cmd 87
scoreboard players set @e[tag=plane-init,tag=a6m2-body] vp.rolling-cmd 88
scoreboard players set @e[tag=plane-init,tag=a6m2-body] vp.flying-cmd 89

scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.w1-reload 0
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.w2-reload 0
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.w3-reload 0
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.ammunition1 60
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.ammunition2 700
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.ammunition3 0
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.max-ammo1 60
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.max-ammo2 700
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.max-ammo3 2
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.max-ammo-rel1 280
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.max-ammo-rel2 140
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.max-ammo-rel3 3600
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.weapon-types 6

scoreboard players set @e[tag=plane-init,tag=a6m2-root] vp.max-engine 1

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=a6m2-root,limit=1] Pos
execute store result score @e[tag=plane-init,tag=a6m2-root,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,tag=a6m2-root,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,tag=a6m2-root,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#hitboxのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetZ 2700
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -3200
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 900
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 3200
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 900
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -1300
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -3800
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 1300
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -3800
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 800
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -4200
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 1100

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
