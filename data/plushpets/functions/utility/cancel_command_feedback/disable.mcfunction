# cancel command feedback in chat for ran command

#check if sendCommandFeedback gamerule is enabled
execute store result score #gamerule_enabled plushpets.temp run gamerule sendCommandFeedback

#temporarily turn off command feedback
gamerule sendCommandFeedback false

#turn on sendCommandFeedback gamerule again if it was enabled before
execute if score #gamerule_enabled pluspets.temp matches 1.. run schedule function plushpets:utility/cancel_command_feedback/re-enable 1t