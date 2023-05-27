#declare storage racoonia

setblock ~ -64 ~ yellow_shulker_box{Items:[]}
data modify block ~ -64 ~ Items append from storage racoonia input
loot give @s mine ~ -64 ~ air{drop_contents:1b}
setblock ~ -64 ~ bedrock
