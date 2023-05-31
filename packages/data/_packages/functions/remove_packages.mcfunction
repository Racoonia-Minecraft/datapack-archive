# TODO: Remove all packages
# Remove all package spawn eggs
# Warn that packages in unloaded chunks will not be removed
# Warn that offline players with packages will not be cleared
execute at @e[type=minecraft:marker,tag=packages.package,tag=!global.ignore.gui] run function _packages:package/remove
