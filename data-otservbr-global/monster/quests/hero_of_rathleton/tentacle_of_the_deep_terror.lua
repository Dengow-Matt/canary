local mType = Game.createMonsterType("Tentacle of the Deep Terror")
local monster = {}

monster.description = "a tentacle of the deep terror"
monster.experience = 5850
monster.outfit = {
	lookType = 681,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.level = {
min = 225,
max = 475
}

monster.health = 25500
monster.maxHealth = 25500
monster.race = "venom"
monster.corpse = 0
monster.speed = 175
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 800,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.events = {
	"TentacleDeep"
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 388, attack = 500},
	{name ="blightwalker curse", interval = 2000, chance = 10, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_LIFEDRAIN, minDamage = -65, maxDamage = -2135, radius = 4, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="drunk", interval = 2000, chance = 20, radius = 7, effect = CONST_ME_HITBYPOISON, target = false, duration = 35000},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = 0, maxDamage = -1100, length = 8, spread = 3, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = 0, maxDamage = -1110, range = 7, shootEffect = CONST_ANI_SNOWBALL, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -2750, length = 8, spread = 3, effect = CONST_ME_ICEAREA, target = false}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 225, maxDamage = 850, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = -30},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
