#declare storage racooniaserver

data modify storage racooniaserver issues append from entity @s SelectedItem.tag.pages[1]
clear @s minecraft:writable_book{racooniaserver:{issue_form:1b}}
