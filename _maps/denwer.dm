#if !defined(MAP_FILE)

		#define TITLESCREEN "title" //Add an image in misc/fullscreen.dmi, and set this define to the icon_state, to set a custom titlescreen for your map

		#define MINETYPE "lavaland"

		#include "map_files\Equestria\manehattan.dmm"
//		#include "map_files\Denwer\denwersurface.dmm"
//		#include "map_files\Denwer\denwersewers.dmm"
//		#include "map_files\Equestria\Equestria.dmm"
		#include "map_files\Equestria\navarro.dmm"
		#include "RandomZLevels\centcomAway.dmm"
//		#include "map_files\Equestria\tunnel1.dmm"
//		#include "map_files\Equestria\manehattanunderground.dmm"

		#define MAP_PATH "map_files/Equestria"
		#define MAP_FILE "Equestria.dmm"
		#define MAP_NAME "Equestrian Wasteland"
		#define MAP_FACTIONS_LIST list("vault", "vault_npc", "bs", "bs_npc", "enclave", "enclave_npc", "none", "none_npc", "city", "city_npc", "raiders", "raiders_npc","ncr", "ncr_npc","legion","legion_npc","followers","followers_npc","coc")

		#define MAP_TRANSITION_CONFIG list()

#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring wasteland debug.

#endif