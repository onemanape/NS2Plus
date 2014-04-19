Script.Load("lua/CHUD_Utility.lua")

local kCHUDStatsMessage =
{
    isPlayer = "boolean",
    weapon = "enum kTechId",
    targetId = "entityid",
    damage = "float",
}

Shared.RegisterNetworkMessage( "CHUDStats", kCHUDStatsMessage )

local networkVars =
{
	extraTech = "string (128)"
}

if Server then

	local originalUpdateScore = PlayerInfoEntity.UpdateScore
	function PlayerInfoEntity:UpdateScore()
	
		originalUpdateScore(self)
		
		local scorePlayer = Shared.GetEntity(self.playerId)
		local playerEntity = Shared.GetEntity(self.entityId)

		if scorePlayer then
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
				if playerEntity:isa("JetpackMarine") then
					upgrades = tostring(kTechId.Jetpack)
				end
				if playerEntity:GetWeapon(Welder.kMapName) ~= nil then
					if upgrades == "" then
						upgrades = tostring(kTechId.Welder)
					else
						upgrades = upgrades .. " " .. tostring(kTechId.Welder)
					end
				end
			end
			
			self.extraTech = upgrades

		end
		
		return true

	end

end

Class_Reload("PlayerInfoEntity", networkVars)