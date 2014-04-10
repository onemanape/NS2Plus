CHUDOptions =
{
			mingui = {
				name    = "CHUD_MinGUI",
				label   = "Minimal GUI",
				tooltip = "Removes backgrounds/scanlines from all UI elements.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "func",
				valueType = "bool",
				applyFunction = ApplyCHUDSettings,
				sort = "A1",
			},
			minnps = {
				name    = "CHUD_MinNameplates",
				label   = "Minimal nameplates",
				tooltip = "Toggles building names and health/armor bars with a simple %.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "func",
				valueType = "bool",
				sort = "A5",
			},
			smallnps = {
				name    = "CHUD_SmallNameplates",
				label   = "Small nameplates",
				tooltip = "Makes fonts in the nameplates smaller.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "func",
				valueType = "bool",
				applyFunction = ApplyCHUDSettings,
				sort = "A6",
			},
			av = {
				name    = "CHUD_AV",
				label   = "Alien vision",
				tooltip = "Lets you choose between different Alien Vision types.",
				type    = "select",
				values  = { "Default", "Huze's Old AV", "Huze's Minimal AV" },
				valueTable = {
					"shaders/DarkVision.screenfx",
					"shaders/HuzeOldAV.screenfx",
					"shaders/HuzeMinAV.screenfx",
				},
				callback = CHUDSaveMenuSettings,
				defaultValue = 0,
				category = "func",
				valueType = "int",
				applyFunction = ApplyCHUDSettings,
				sort = "B1",
			},
			avstate = { 
                name    = "CHUD_AVState",
                label   = "Default AV state",
				tooltip = "Sets the state the alien vision will be in when you respawn.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "func",
				valueType = "bool",
				sort = "B2",
            },
			score = {
				name    = "CHUD_ScorePopup",
				label   = "Score popup",
				tooltip = "Disables or enables score popup (+5).",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "hud",
				valueType = "bool",
				sort = "A1",
			},
			assists = {
				name    = "CHUD_Assists",
				label   = "Assist score popup",
				tooltip = "Disables or enables the assists score popup.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "hud",
				valueType = "bool",
				sort = "A2",
			},
			banners = {
				name    = "CHUD_Banners",
				label   = "Objective banners",
				tooltip = "Removes the banners in the center of the screen (\"Commander needed\", \"Power node under attack\", \"Evolution lost\", etc.).",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "hud",
				valueType = "bool",
				sort = "B1",
			},
			blur = {
				name    = "CHUD_Blur",
				label   = "Blur",
				tooltip = "Removes the background blur from menus/minimap.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "func",
				valueType = "bool",
			},
			gametime = {
				name    = "CHUD_Gametime",
				label   = "Game time",
				tooltip = "Adds or removes the game time on the top left (requires having the commander name as marines).",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "hud",
				valueType = "bool",
				sort = "C5",
			},
			hpbar = {
				name    = "CHUD_HPBar",
				label   = "Marine health bars",
				tooltip = "Enables or disables the health bars from the marine HUD.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "func",
				valueType = "bool",
				applyFunction = ApplyCHUDSettings,
				sort = "C1",
			},
			kda = {
				name    = "CHUD_KDA",
				label   = "KDA/KAD",
				tooltip = "Switches the scoreboard between KAD and KDA.",
				type    = "select",
				values  = { "KAD", "KDA" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "hud",
				valueType = "bool",
				applyFunction = ApplyCHUDSettings,
			},
			minimap = {
				name    = "CHUD_Minimap",
				label   = "Marine minimap",
				tooltip = "Toggles the entire top left of the screen for the marines (minimap, comm name, team res, comm actions).",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "hud",
				valueType = "bool",
				applyFunction = ApplyCHUDSettings,
				sort = "C1",
			},
			minwps = {
				name    = "CHUD_MinWaypoints",
				label   = "Minimal waypoints",
				tooltip = "Toggles all text/backgrounds and only leaves the waypoint icon.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "func",
				valueType = "bool",
				sort = "A4",
			},
			particles = {
				name    = "CHUD_Particles",
				label   = "Minimal particles",
				tooltip = "Toggles between default and less vision obscuring particles.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "func",
				valueType = "bool",
				applyFunction = SetCHUDCinematics,
			}, 
			mapparticles = {
				name    = "CHUD_MapParticles",
				label   = "Map particles",
				tooltip = "Enables or disables particles, holograms and other map specific effects.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "comp",
				valueType = "bool",
				applyFunction = SetCHUDCinematics,
			}, 
			rtcount = {
				name    = "CHUD_RTcount",
				label   = "RT count dots",
				tooltip = "Toggles the RT count dots at the bottom and replaces them with a number.",
				type    = "select",
				values  = { "Number", "Dots" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "hud",
				valueType = "bool"
			},
			showcomm = {
				name    = "CHUD_ShowComm",
				label   = "Marine Comm name",
				tooltip = "Forces showing the commander and resources when disabling the minimap.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "hud",
				valueType = "bool",
				applyFunction = ApplyCHUDSettings,
				sort = "C4",
			}, 
			smalldmg = {
				name    = "CHUD_SmallDMG",
				label   = "Small damage numbers",
				tooltip = "Makes the damage numbers smaller.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "func",
				valueType = "bool",
				sort = "A7",
			}, 
			tracers = {
				name    = "CHUD_Tracers",
				label   = "Weapon tracers",
				tooltip = "Enables or disables weapon tracers.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "func",
				valueType = "bool",
			}, 
			unlocks = {
				name    = "CHUD_Unlocks",
				label   = "Research notifications",
				tooltip = "Removes the research completed notifications on the right side of the screen.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "hud",
				valueType = "bool",
				sort = "B2",
			}, 
			wps = {
				name    = "CHUD_Waypoints",
				label   = "Waypoints",
				tooltip = "Disables or enables all waypoints except Attack orders (waypoints can still be seen on minimap).",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "func",
				valueType = "bool",
				sort = "A2",
			}, 
			alienbars = {
				name    = "CHUD_AlienBars",
				label   = "Alien bars",
				tooltip = "Lets you choose between the default health/energy bars and Oma's (thicker).",
				type    = "select",
				values  = { "Default", "Oma's Alien Bars" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "func",
				valueType = "bool",
				applyFunction = ApplyCHUDSettings,
				sort = "C2",
			}, 
			ambient = {
				name    = "CHUD_Ambient",
				label   = "Ambient sounds",
				tooltip = "Removes map ambient sounds. You can also remove all the ambient sounds during the game by typing \"stopsound\" in console.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "comp",
				valueType = "bool",
				applyFunction = ApplyCHUDSettings,
			}, 
			nsllights = {
				name    = "lowLights",
				label   = "NSL Low lights",
				tooltip = "Replaces the low quality option lights with the lights from the NSL maps.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "comp",
				valueType = "bool",
				applyFunction = OnCommandCHUDNSLLights,
			}, 
			friends = {
				name    = "CHUD_Friends",
				label   = "Friends highlighting",
				tooltip = "Enables or disables the friend highlighting in the scoreboard/nameplates.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "hud",
				valueType = "bool",
				applyFunction = ApplyCHUDSettings,
			}, 
			uplvl = {
				name    = "CHUD_UpgradeLevel",
				label   = "Upgrade level UI",
				tooltip = "Changes between disabled, default or old icons for marine upgrades.",
				type    = "select",
				values  = { "Disabled", "Default", "NS2 Beta" },
				callback = CHUDSaveMenuSettings,
				defaultValue = 1,
				category = "hud",
				valueType = "int",
				applyFunction = ApplyCHUDSettings,
			}, 
			classicammo = {
				name    = "CHUD_ClassicAmmo",
				label   = "Classic ammo counter",
				tooltip = "Toggles a classic ammo counter on the bottom right of the HUD.",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = false,
				category = "hud",
				valueType = "bool",
			},
			hitindicator = { 
                name    = "CHUD_HitIndicator",
                label   = "Hit indicator fade time",
				tooltip = "Controls the speed of the crosshair hit indicator.",
                type    = "slider",
				sliderCallback = CHUDHitIndicatorSlider,
				defaultValue = 1,
				minValue = 0,
				maxValue = 1,
				category = "hud",
				valueType = "float",
				applyFunction = OnCommandCHUDHitIndicator,
            },
			autowps = { 
                name    = "CHUD_AutoWPs",
                label   = "Automatic waypoints",
				tooltip = "Enables or disables automatic waypoints (not given by the commander).",
				type    = "select",
				values  = { "Off", "On" },
				callback = CHUDSaveMenuSettings,
				defaultValue = true,
				category = "func",
				valueType = "bool",
				sort = "A3",
            },
            locationalpha = { 
                name    = "CHUD_LocationAlpha",
                label   = "Location transparency",
				tooltip = "Sets the trasparency of the location text on the minimap.",
				type    = "slider",
				sliderCallback = CHUDLocationSlider,
				defaultValue = 0.65,
				minValue = 0,
				maxValue = 1,
				category = "hud",
				valueType = "float",
				applyFunction = OnCommandCHUDLocationAlpha,
				sort = "C3",
            },
			minimapalpha = { 
                name    = "CHUD_MinimapAlpha",
                label   = "Overview transparency",
				tooltip = "Sets the trasparency of the map overview.",
				type    = "slider",
				sliderCallback = CHUDMinimapSlider,
				defaultValue = 0.85,
				minValue = 0,
				maxValue = 1,
				category = "hud",
				valueType = "float",
				applyFunction = OnCommandCHUDMinimapAlpha,
				sort = "C2",
            },
			dmgcolor_a = {
				name    = "CHUD_DMGColorA",
				label   = "Alien damage numbers color",
				tooltip = "Changes the color of the alien damage numbers.",
				type    = "select",
				values  = { "Default", "Red", "Green", "Blue", "Yellow", "Magenta", "Cyan", "Orange", "Black", "White" },
				callback = CHUDSaveMenuSettings,
				defaultValue = 0,
				category = "func",
				valueType = "int",
				sort = "D2",
			},
			dmgcolor_m = {
				name    = "CHUD_DMGColorM",
				label   = "Marine damage numbers color",
				tooltip = "Changes the color of the marine damage numbers.",
				type    = "select",
				values  = { "Default", "Red", "Green", "Blue", "Yellow", "Magenta", "Cyan", "Orange", "Black", "White" },
				callback = CHUDSaveMenuSettings,
				defaultValue = 0,
				category = "func",
				valueType = "int",
				sort = "D1",
			},
			hitsounds = {
				name    = "CHUD_Hitsounds",
				label   = "Hitsounds",
				tooltip = "Enables or disables server confirmed hitsounds.",
				type    = "select",
				values  = { "Disabled", "Quake 3", "Quake 4", "Dystopia" },
				valueTable = { "null",
					"sound/hitsounds.fev/hitsounds/q3",
					"sound/hitsounds.fev/hitsounds/q4",
					"sound/hitsounds.fev/hitsounds/dys",
				},
				callback = CHUDSaveMenuSettings,
				defaultValue = 0,
				category = "comp",
				valueType = "int",
				sort = "A1",
			},
			hitsounds_vol = { 
                name    = "CHUD_HitsoundsVolume",
                label   = "Hitsounds volume",
				tooltip = "Sets the volume for hitsounds.",
				type    = "slider",
				sliderCallback = CHUDHitsoundsSlider,
				defaultValue = 0.75,
				minValue = 0,
				maxValue = 1,
				category = "comp",
				valueType = "float",
				sort = "A3",
            },
			hitsounds_pitch = { 
                name    = "CHUD_HitsoundsPitch",
                label   = "Hitsounds pitch modifier",
				tooltip = "Sets the pitch for high damage hits (only shotgun).",
				type    = "select",
				values  = { "Low pitch", "High pitch" },
				callback = CHUDSaveMenuSettings,
				defaultValue = 0,
				category = "comp",
				valueType = "int",
				sort = "A2",
            },
}