#declare entity #block_end

execute if score #block_end racooniaserver.setting matches 1 run function _racooniaserver:block_end
advancement revoke @s only _racooniaserver:end_detector
