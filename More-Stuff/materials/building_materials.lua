dofile("ui/uihelper.lua")

StandardMinLength = 37.5
StandardMaxLength = 150
StandardMaxLinkLength = 218

table.insert(Sprites,
{
	Name = "hud-nanite-icon",
	States =
	{
		Normal = { Frames = {{ texture = "ui/textures/HUD/Materials-Armour-A.dds", bottom = 0.664 },},},
		Rollover = { Frames = {{ texture = "ui/textures/HUD/Materials-Armour-R.dds", bottom = 0.664 },},},
		Pressed = { Frames = {{ texture = "ui/textures/HUD/Materials-Armour-S.dds", bottom = 0.664 },},},
		Disabled = { Frames = {{ texture = "ui/textures/HUD/Materials-Armour-D.dds", bottom = 0.664 },},},
	},
})
table.insert(Sprites,{
	Name = "nanite",
	States =
	{
		Normal =
		{
			Frames =
			{
				{ texture = path .. "/materials/nanite.png", duration = 0.01,  mipmap = false, },
				{ texture = path .. "/materials/nanite-damaged-1.png", duration = 0.33,  mipmap = false, },
				{ texture = path .. "/materials/nanite-damaged-2.png", duration = 0.33,  mipmap = false, },
				{ texture = path .. "/materials/nanite-damaged-3.png", duration = 0.331,  mipmap = false, },
				repeatS = true,
			},
		},
	},
})
table.insert(Materials,
{
	SaveName = "nanite",
	Icon = "hud-nanite-icon",
	Detail = "hud-detail-bracing",
	Sprite = "nanite",
	Prerequisite = {"factory" },
	RenderOrder = 1,
	Stiffness = 250000,
	MaxCompression = 0,8,
	MaxExpansion = 1.2,
	MinLength = StandardMinLength,
	MaxLength = StandardMaxLength,
	MaxLinkLength = StandardMaxLinkLength,
	Mass = 0.4,
	AirDrag = 6.4,
	HitPoints = 400,
	AbsorptionMomentumThreshold = 50,
	ReflectionMomentumThreshold = 2000,
	PenetrationMomentumThreshold = 4000,
	RicochetVariationFactor = 0,
	SpeedLossFactor = 0,95,
	MetalBuildCost = 1.4,
	MetalRepairCost = 0.6,
	MetalReclaim = 0.6,
	EnergyBuildCost = 4.0,
	EnergyRepairCost = 3.5,
	EnergyReclaim = 0.0,
	EnergyRunCost = 0.15,
	BuildTime = 8,
	ScrapTime = 8,
	RepairRateMultiplier = 5.0,
	SupportsDevices = false,
	ReflectsBeams = false,
	RepairTime = 0.1,
	NoCostRecession = true,
	DegreesPerSecondMin = 360,
	DegreesPerSecondMax = 360,
	KeySpriteByDamage = true,
	Node = StandardNode,
	BuildEffect = "effects/build_armor.lua",
	DestroyEffect = "effects/armor_destroy.lua",
	NodeImpacts =
	{
		["foundations"] = "effects/bounce_metal.lua",
		["rocks01"] = "effects/bounce_metal.lua",
		["default"] = "effects/bounce_metal.lua",
	},
	IsBehindDevices = false,
	AttachesCladding = true,
	SelectEffect = "ui/hud/materials/ui_materials",
})
