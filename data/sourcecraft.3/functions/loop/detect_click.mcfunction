# detect click

#end click detector
execute as @a[tag=sourcecraft.click_detect_running,tag=!sourcecraft.click_detect] run function sourcecraft.3:click_detect/end_click_detect

#init click detector
execute as @a[tag=sourcecraft.click_detect,tag=!sourcecraft.click_detect_running] at @s run function sourcecraft.3:click_detect/init_click_detect

#sync click detector
execute as @a[tag=sourcecraft.click_detect,tag=sourcecraft.click_detect_running] run function sourcecraft.3:click_detect/run_click_detect

#schedule to run again next tick
schedule function sourcecraft.3:loop/detect_click 1t replace