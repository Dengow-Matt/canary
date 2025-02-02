--# Monster converted using Devm monster converter #--
local mType = Game.createMonsterType("Hight Ghastly Dragon")
local monster = {}

monster.description = "a Hight ghastly dragon"
monster.experience = 57600
monster.outfit = {
	lookType = 351,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.level = {
min = 325,
max = 445
}

monster.health = 13800
monster.maxHealth = 13800
monster.race = "undead"
monster.corpse = 10445
monster.speed = 520
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 5
}

monster.flags = {
	isSummonable = false,
	isAttackable = true,
	isHostile = true,
	isConvinceable = false,
	isPushable = false,
	isBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetdistance = 1,
	runHealth = 366,
	isHealthHidden = false,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "EMBRACE MY GIFTS!", yell = true},
	{text = "I WILL FEAST ON YOUR SOUL!", yell = true}
}

monster.loot = {
	{name = "gold coin", chance = 33725, maxCount = 66},
	{name = "platinum coin", chance = 29840, maxCount = 55},
	{name = "soul orb", chance = 12170},
	{name = "demonic essence", chance = 8920},
	{name = "great mana potion", chance = 30560, maxCount = 2},
	{name = "terra legs", chance = 8130},
	{name = "terra boots", chance = 9510},
	{name = "great spirit potion", chance = 29460, maxCount = 2},
	{name = "ultimate health potion", chance = 24700},
	{name = "shiny stone", chance = 860},
	{name = "guardian boots", chance = 1200},
	{name = "Zaoan armor", chance = 4870},
	{name = "Zaoan helmet", chance = 3150},
	{name = "Zaoan shoes", chance = 5870},
	{name = "Zaoan legs", chance = 4400},
	{name = "drakinata", chance = 1470},
	{name = "Zaoan sword", chance = 3100},
	{name = "twin hooks", chance = 15100},
	{name = "Zaoan halberd", chance = 15020},
	{name = "spellweaver's robe", chance = 1690},
	{name = "ghastly dragon head", chance = 6650},
	{name = "undead heart", chance = 19830},
	{name = "jade hat", chance = 810}
}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1603, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 10, minDamage = -920, maxDamage = -1580, range = 5, effect = CONST_ME_SMALLCLOUDS, target = true},
	{name ="combat", interval = 2000, chance = 15, minDamage = -80, maxDamage = -230, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="combat", interval = 2000, chance = 10, minDamage = -120, maxDamage = -950, type = COMBAT_DEATH, length = 8, spread = 3, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -110, maxDamage = -880, type = COMBAT_DEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="speed", interval = 2000, chance = 20, SpeedChange = -800, Duration = 30000}
}

monster.defenses = {
	defense = 35,
	armor = 35
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
