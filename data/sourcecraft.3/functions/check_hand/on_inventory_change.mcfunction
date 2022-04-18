# triggers when a players inventory changes

#reset right click detect
tag @s remove sourcecraft.click_detect

#run hand check tag
function #sourcecraft:modules/check_hand

#reset trigger
advancement revoke @s only sourcecraft.3:on_inventory_change