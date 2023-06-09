scoreboard players set @a trifles.hasPocketcat 0
scoreboard players set @a[nbt={Inventory:[{tag:{trifles:{type:"pocketcat"}}}]}] trifles.hasPocketcat 1

schedule function _trifles:pocketcat/check 60t
