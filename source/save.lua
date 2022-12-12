function SaveDataToDisk()
	playdate.datastore.write(saveData)
end

function LoadDataFromDisk()
	saveData = playdate.datastore.read()
	if saveData == nil then
		saveData = {}
	end
	-- -- if savedata.highscore == nil then
		-- -- savedata.highscore = 0
	-- -- end
	-- if saveData.easy == nil then
		-- saveData.easy = false
	-- end
	-- if saveData.DarkMode == nil then
		-- saveData.DarkMode = true
	-- end
end

function playdate.gameWillTerminate()
	SaveDataToDisk()
end
function playdate.deviceWillSleep()
	SaveDataToDisk()
end
function playdate.deviceWillLock()
	SaveDataToDisk()
end
