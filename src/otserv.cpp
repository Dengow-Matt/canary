/**
 * Canary - A free and open-source MMORPG server emulator
 * Copyright (©) 2019-2022 OpenTibiaBR <opentibiabr@outlook.com>
 * Repository: https://github.com/opentibiabr/canary
 * License: https://github.com/opentibiabr/canary/blob/main/LICENSE
 * Contributors: https://github.com/opentibiabr/canary/graphs/contributors
 * Website: https://docs.opentibiabr.com/
 */

#include "pch.hpp"
#include "canary_server.hpp"

#ifndef UNIT_TESTING
int main() {
	return inject<CanaryServer>().run();
}
#endif

#ifndef _WIN32
__attribute__ ((used)) void saveServer() {
	if(g_game.getPlayersOnline() > 0)
		g_game.saveGameState(true);
}
#endif