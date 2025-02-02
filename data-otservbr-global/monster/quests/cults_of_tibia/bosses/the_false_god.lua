local mType = Game.createMonsterType("The False God")
local monster = {}

monster.description = "The False God"
monster.experience = 7500000
monster.outfit = {
	lookType = 984,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.level = {
min = 350,
max = 550
}

monster.events = {
	"CultsOfTibiaBossDeath",
}

monster.bosstiary = {
	bossRaceId = 1409,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 300000
monster.maxHealth = 300000
monster.race = "blood"
monster.corpse = 22495
monster.speed = 615
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30
}

monster.events = {
	"Deadmonsters"
}

monster.bosstiary = {
	bossRaceId = 1409,
	bossRace = RARITY_ARCHFOE,
	storageCooldown = Storage.CultsOfTibia.Minotaurs.BossTimer
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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "CREEEAK!", yell = false}
}

monster.loot = {
	{id = 282, chance = 26900}, -- giant shimmering pearl (brown)
	{name = "magic sulphur", chance = 18920},
	{name = "mino shield", chance = 17620},
	{name = "silver token", chance = 5732},
	{name = "gold token", chance = 6532},
	{name = "gold coin", chance = 100000, maxCount = 200},
	{name = "platinum coin", chance = 29840, maxCount = 30},
	{name = "piece of hell steel", chance = 12370, maxCount = 9},
	{name = "red piece of cloth", chance = 16370, maxCount = 6},
	{name = "yellow gem", chance = 29460},
	{name = "blue gem", chance = 21892},
	{name = "underworld rod", chance = 117270},
	{name = "war axe", chance = 127270},
	{name = "pair of iron fists", chance = 9510},
	{name = "mysterious remains", chance = 100000},
	{name = "small diamond", chance = 12760, maxCount = 10},
	{name = "small amethyst", chance = 14700, maxCount = 10},
	{name = "small topaz", chance = 11520, maxCount = 10},
	{name = "small sapphire", chance = 13790, maxCount = 10},
	{name = "small emerald", chance = 14700, maxCount = 10},
	{name = "small amethyst", chance = 12259, maxCount = 10},
	{name = "energy bar", chance = 16872, maxCount = 3},
	{name = "ultimate health potion", chance = 27652, maxCount = 10},
	{name = "great mana potion", chance = 33721, maxCount = 10},
	{name = "great spirit potion", chance = 25690, maxCount = 5},
	{name = "piece of royal steel", chance = 15890},
	{name = "execowtioner axe", chance = 7890},
	{name = "maimer", chance = 890},
	{name = "ornate mace", chance = 7890},
	{name = "velvet mantle", chance = 1890},
	{name = "iron ore", chance = 14542},
	{name = "giant sword", chance = 16892},
	{name = "giant sapphire", chance = 16800},
    {name = "Giant Amethyst", chance = 16800},
    {name = "Giant Emerald", chance = 16800},
    {name = "Giant Ruby", chance = 16800},
    {name = "Giant Topaz", chance = 16800},
    {name = "Hexagonal Ruby", chance = 16800},
    {name = "crystal coin", minCount = 0, maxCount = 30, chance = 50000},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1500},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -100, maxDamage = -2700, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -1700, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -2840, length = 8, spread = 3, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -700, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 2000, chance = 29, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -840, range = 7, radius = 4, effect = CONST_ME_FIREAREA, target = true}
}

monster.defenses = {
	defense = 30,
	armor = 30
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
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
