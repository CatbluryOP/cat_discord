Config = nil

CreateThread(function()
	local config = lib.callback.await('cat_discord:getConfig', 100)
	Config = config
	while Config == nil do
		Wait(5)
	end
	if Config.DiscordQueue.enabled then
		players, connectInfo = {}, {}
		local firstSpawn = true
		AddEventHandler("playerSpawned", function()
			if firstSpawn then
				TriggerServerEvent('cat_discord:removeFromQueue')
				firstSpawn = false
			end
		end)
	end
end)