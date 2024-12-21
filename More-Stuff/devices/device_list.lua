dofile("devices/device_util.lua")

BuildQueueConcurrent = {}

Sprites =
{
	ButtonSprite("thermal-icon", "HUD/HUD-Mine", nil, ButtonSpriteBottom),
}

Devices =
{
	{
		SaveName = "thermal",
		FileName = path .. "devices/thermal.lua",
		Icon = "thermal-icon",
		Detail = "hud-detail-mine",
		BuildTimeComplete = 30.0,
		ScrapPeriod = 8,
		MetalCost = 250,
		EnergyCost = 2200,
		MetalRepairCost = 200,
		EnergyRepairCost = 1500,
		MaxUpAngle = 30,
		BuildOnOreOnly = true,
		AlignToCursorNormal = false,
		SelectEffect = "ui/hud/devices/ui_devices",

--		Upgrades =
--		{
--			["thermal2"] =
--			{
--				Enabled = true,
--				SaveName = "mine2",
--				MetalCost = 250,
--				EnergyCost = 2500,
--			},
--		},
	},
}
