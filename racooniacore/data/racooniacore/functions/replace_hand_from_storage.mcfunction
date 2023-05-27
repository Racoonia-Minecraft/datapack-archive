#declare storage racoonia

summon armor_stand ~ ~ ~ {Tags:[racoonia.giveStorageItem],HandItems:[{},{}],Invisible:true}
data modify entity @e[tag=racoonia.giveStorageItem,sort=nearest,limit=1] HandItems[0] set from storage racoonia input
item replace entity @s weapon.mainhand from entity @e[tag=racoonia.giveStorageItem,sort=nearest,limit=1] weapon.mainhand
kill @e[tag=racoonia.giveStorageItem,sort=nearest,limit=1]
