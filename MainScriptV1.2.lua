local function createnotification(title, text, delay)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = title,
		Text = text,
		Duration = delay
	})
end

if shared.AshuraExecuted then
	createnotification("AshuraClient", "Ashura Is Already Injected", 5)
	return
else
	shared.AshuraExecuted = true
end

local GuiLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconKidDumb/AshuraForRoblox/main/GuiLibrary.lua", true))()
shared.GuiLibrary = GuiLibrary

if game.PlaceId == 6872274481 or game.PlaceId == 8560631822 or game.PlaceId == 8444591321 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconKidDumb/AshuraForRoblox/main/CustomModules/BedwarsV1.2", true))()
end
