Script.Load("lua/GUICommanderAlerts.lua")

local validMarineAlerts = { kTechId.MarineAlertNeedAmmo, kTechId.MarineAlertNeedMedpack, kTechId.MarineAlertNeedOrder, kTechId.MarineAlertSoldierUnderAttack }
local originalGUICommAlertsKeyEvent, AlertClicked
originalGUICommAlertsKeyEvent = Class_ReplaceMethod("GUICommanderAlerts", "SendKeyEvent",
	function(self, key, down)
		
		local player = Client.GetLocalPlayer()
		local numberMessages = table.count(self.messages)
		if down and numberMessages > 0 then
		
			if key == InputKey.Space then
			
				if player:isa("MarineCommander") then
					-- Find the first player-related message
					while numberMessages > 0 do
						local relevantMessage = self.messages[numberMessages]
						for _, techId in pairs(validMarineAlerts) do
							if relevantMessage["Message"]:GetText() == GetDisplayNameForAlert(techId, "") then
								AlertClicked(relevantMessage)
								return true
							end
						end
						numberMessages = numberMessages - 1
					end
				end
				
				-- If we go through the queue and no players have requests, we go to the last alert
				-- Some people wanted to disable this so...
				if not CHUDGetOption("commqueue_playeronly") then
					local latestMessage = self.messages[table.count(self.messages)]
					AlertClicked(latestMessage)
					return true
				end
				
			elseif key == InputKey.MouseButton0 then
			
				local mouseX, mouseY = Client.GetCursorPosScreen()
				for i, message in ipairs(self.messages) do
				
					if GUIItemContainsPoint(message["Background"], mouseX, mouseY) then
					
						AlertClicked(message)
						return true
						
					end
					
				end
				
			end
			
		end
		return false
		
	end)
CopyUpValues( GUICommanderAlerts.SendKeyEvent, originalGUICommAlertsKeyEvent )