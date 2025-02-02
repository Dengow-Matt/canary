local mType = Game.createMonsterType("Ichgahal")
local monster = {}

monster.description = "Ichgahal"
monster.experience = 18000000
monster.outfit = {
	lookType = 1665,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.level = {
min = 355,
max = 655
}

monster.health = 1350000
monster.maxHealth = 1350000
monster.race = "undead"
monster.corpse = 44018
monster.speed = 250
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20
}

monster.bosstiary = {
	bossRaceId = 2364,
	bossRace = RARITY_NEMESIS
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.events = {
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	maxSummons = 5,
	summons = {
		{ name = "Echo Of Ichgahal", chance = 35, interval = 15000, count = 5 },
	},
}

monster.voices = {
}

monster.loot = {
	{name="crystal coin",chance = 100000, maxCount = 122},
	{name="ultimate mana potion", chance = 32653, maxCount = 114},
	{name="ultimate health potion",chance = 30612, maxCount = 114},
	{name= "bullseye potion",chance = 24490, maxCount = 5},
	{name= "berserk potion",chance = 22449, maxCount = 5},
	{id = 39233, chance = 5000},
	{name = "mastermind potion",chance = 18367, maxCount = 5},
	{name = "giant amethyst", chance = 6122},
	{name = "giant ruby", chance = 4082},
	{name = "giant emerald", chance = 4082},
	{name = "giant sapphire", chance = 2041},
	{name = "giant topaz", chance = 2041},
	{name = "spiritual horseshoe", chance = 100},
}

monster.attacks = {
	{ name ="melee", interval = 3000, chance = 100, minDamage = -1500, maxDamage = -2300 },
	{ name ="combat", interval = 1000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -700, maxDamage = -1000, length = 12, spread = 3, effect = 249, target = false },
	{ name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -2600, maxDamage = -2300, length = 12, spread = 3, effect = 193, target = false },
	{ name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -900, maxDamage = -1500, length = 6, spread = 2, effect = CONST_ME_FIREAREA, target = false },
	{ name ="speed", interval = 2000, chance = 35, speedChange = -600, radius = 8, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000 }
}

monster.defenses = {
	defense = 105,
	armor = 105,
	{ name ="combat", interval = 3000, chance = 10, type = COMBAT_HEALING, minDamage = 800, maxDamage = 1200, effect = 236, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = 15 },
	{ type = COMBAT_FIREDAMAGE, percent = 15 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 15 },
	{ type = COMBAT_HOLYDAMAGE , percent = 15 },
	{ type = COMBAT_DEATHDAMAGE , percent = 15 }
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false }
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)