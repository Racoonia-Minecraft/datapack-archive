execute at @e[type=minecraft:villager,tag=packages.package_lock,distance=..0.1] run function _packages:package/try_lock
execute as @e[type=minecraft:villager,tag=packages.package_open,distance=..0.1] run function _packages:package/open
