# TODO: Remove all presents
# Remove all present spawn eggs
# Warn that presents in unloaded chunks will not be removed
# Warn that offline players with presents will not be cleared
execute at @e[type=minecraft:marker, tag=racoonia.present] run function _libament:present/remove
