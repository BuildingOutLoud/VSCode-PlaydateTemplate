import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/timer"
import "CoreLibs/sprites"
import "CoreLibs/crank"
import "CoreLibs/ui"
import "CoreLibs/math"
import "CoreLibs/animator"

import "supports"
import "save"

--[[-----------------------------------------------------------------------------------
-------------------------------- VARS
-------------------------------------------------------------------------------------]]
local gfx <const> = playdate.graphics
local geom <const> = playdate.geometry

local saveData = {}

local crankIndicatorShown = false



--[[-----------------------------------------------------------------------------------
-------------------------------- Init
-------------------------------------------------------------------------------------]]
function initialize()
	LoadDataFromDisk()

	--menu stuff
	-- local systemMenu = playdate.getSystemMenu()
	-- systemMenu:addCheckmarkMenuItem("dark mode", saveData.DarkMode, SetDarkMode)
	-- systemMenu:addCheckmarkMenuItem("easy", saveData.easy, SetDifficulty)
	-- systemMenu:addMenuItem("Clr Highscore", ClearHighScore)

	--misc init
	playdate.display.setRefreshRate(50)
	math.randomseed(playdate.getSecondsSinceEpoch())
	font = playdate.graphics.font.new("font/Roobert-20-Medium-Outlined")
	playdate.graphics.setFont(font)
	playdate.display.setInverted(false)

	--sprites
	-- local rocketBirdImage = gfx.image.new("images/rocketbird")
	-- rocketBirdSprite = gfx.sprite.new(rocketBirdImage)
	-- rocketBirdSprite:add()
	-- rocketBirdSprite:setZIndex(10)
	-- rocketBirdSprite:setCollideRect(0, 0, rocketBirdSprite:getSize())
end

initialize()



--[[-----------------------------------------------------------------------------------
-------------------------------- Update
-------------------------------------------------------------------------------------]]
function playdate.update()
	playdate.timer.updateTimers()

	gfx.sprite.update()

	-- debug stuff
	--gfx.drawTextAligned(ballSpeed, 200, 200, kTextAlignment.center)
	playdate.drawFPS(369, 212)

	-- crank dock notification
	if pd.isCrankDocked() then
		pd.ui.crankIndicator:draw();
	end
end
