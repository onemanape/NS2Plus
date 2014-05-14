local originalUpdateScore = PlayerInfoEntity.UpdateScore
function PlayerInfoEntity:UpdateScore()

	originalUpdateScore(self)

	local playerEntity = Shared.GetEntity(self.playerId)  
	
	if playerEntity then
		local upgrades = ""
		if playerEntity:isa("Alien") then
			for _, upgrade in pairs (Shared.GetEntity(self.entityId):GetUpgrades()) do
				if upgrades == "" then
					upgrades = tostring(upgrade)
				else
					upgrades = upgrades .. " " .. tostring(upgrade)
				end
			end
			extraInfo = upgrades
		elseif playerEntity:isa("Marine") then
			self.isParasited = playerEntity:GetIsParasited()

			if playerEntity:isa("JetpackMarine") then
				upgrades = tostring(kTechId.Jetpack)
			end
			
			local displayWeapons = { { Welder.kMapName, kTechId.Welder },
				{ ClusterGrenade.kMapName, kTechId.ClusterGrenade },
				{ PulseGrenade.kMapName, kTechId.PulseGrenade },
				{ GasGrenade.kMapName, kTechId.GasGrenade },
				{ Mine.kMapName, kTechId.Mine} }
			
			for _, weapon in pairs(displayWeapons) do
				if playerEntity:GetWeapon(weapon[1]) ~= nil then
					if upgrades == "" then
						upgrades = tostring(weapon[2])
					else
						upgrades = upgrades .. " " .. tostring(weapon[2])
					end
				end
			end

		end
		
		self.extraTech = upgrades
		
		// Unknown server browser fix, Shine is already fixing this, so don't run if it's active
		if not Shine then

			local client = playerEntity:GetClient()
				if not client then
					return true
				end

			local score = playerEntity.score or 0

			local name = playerEntity.GetName and playerEntity:GetName() or "Unknown"

			Server.UpdatePlayerInfo(client, name, score)
		end

	end
	
	return true

end