local mType = Game.createMonsterType("Fallen Mooh'tah Master Ghar")
local monster = {}

monster.description = "Fallen Mooh'Tah Master Ghar"
monster.experience = 144000
monster.outfit = {
	lookType = 611,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.level = {
min = 250,
max = 450
}

monster.health = 479900
monster.maxHealth = 479900
monster.race = "blood"
monster.corpse = 21091
monster.speed = 695
monster.manaCost = 0

monster.changeTarget = {
	interval = 0,
	chance = 0
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I will finish you!", yell = false},
	{text = "You are no match for a master of the Mooh'Tha!", yell = false},
	{text = "I might be fallen but you will fall before me!", yell = false}
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1525, condition = {type = CONDITION_POISON, totalDamage = 618, interval = 4000}},
	{name ="combat", interval = 6000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -80, maxDamage = -4300, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 3000, chance = 45, type = COMBAT_FIREDAMAGE, minDamage = -80, maxDamage = -2400, radius = 5, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 4000, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -80, maxDamage = -3270, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 4500, chance = 40, minDamage = -10, maxDamage = -1200, range = 10, shootEffect = CONST_ANI_POISON, target = false},
	{name ="combat", interval = 5000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -60, maxDamage = -1300, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 33,
	armor = 30
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 60},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
