//Fallout Equestria 13 hellhound directory

/mob/living/simple_animal/hostile/deathclaw
	name = "Hellhound"
	desc = "Hellhounds are an intelligent species of sentient, bipedal canines. They have sharp, powerful claws typically used to tunnel through earth and solid concrete. They are the highly evolved descendants of diamond dogs, having been mutated over two centuries by megaspell radiation."
	icon = 'icons/fallout/mobs/deathclaw.dmi'
	icon_state = "hellhound1"
	icon_living = "hellhound1"
	icon_dead = "hellhound_dead"
	speed = 2
	move_to_delay = 4
	turns_per_move = 5
	response_help = "touches"
	response_disarm = "tries to grab the hellhound by its large"
	response_harm = "hits the hellhound right in its large"
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab/deathclaw = 5, /obj/item/stack/sheet/animalhide/deathclaw=3)
	maxHealth = 400
	health = 400
	self_weight = 200
	damage_coeff = list(BRUTE = 0.6, BURN = 0.8, TOX = 0.2, CLONE = 0, STAMINA = 1, OXY = 0)

	faction = list("hostile", "hellhound")

	ambient_sound = 'sound/f13npc/deathclaw_loop.ogg'

	sound_speak_chance = 5
	sound_speak = list('sound/f13npc/deathclaw_charge1.ogg','sound/f13npc/deathclaw_charge2.ogg','sound/f13npc/deathclaw_charge3.ogg')

	aggro_sound_chance = 50
	aggro_sound = 'sound/f13npc/deathclaw_charge1.ogg'

	death_sound = 'sound/f13npc/deathclaw_death.ogg'

	environment_smash = 3 // YOU CAN'T HIDE FROM ME
	force_threshold = 15
	melee_damage_lower = 25
	armour_penetration = 40
	melee_damage_upper = 40
	aggro_vision_range = 12
	see_in_dark = 8
	idle_vision_range = 7
	pixel_w = -16
	mob_size = MOB_SIZE_LARGE
	attacktext = "slashes"
	attack_sound = 'sound/weapons/bladeslice.ogg'

	XP = 65



////œ–Œ—“»“≈, «¿ ›“Œ“ √Œ¬ÕŒ Œƒ ÕŒ ﬂ Ã”ƒ¿ /////

/mob/living/simple_animal/hostile/deathclaw2
	name = "Hellhound"
	desc = "Hellhounds are an intelligent species of sentient, bipedal canines. They have sharp, powerful claws typically used to tunnel through earth and solid concrete. They are the highly evolved descendants of diamond dogs, having been mutated over two centuries by megaspell radiation."
	icon = 'icons/fallout/mobs/deathclaw.dmi'
	icon_state = "hellhound2"
	icon_living = "hellhound2"
	icon_dead = "hellhound_dead"
	speed = 2
	move_to_delay = 4
	turns_per_move = 5
	response_help = "touches"
	response_disarm = "tries to grab the hellhound by its large"
	response_harm = "hits the hellhound right in its large"
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab/deathclaw = 5, /obj/item/stack/sheet/animalhide/deathclaw=3)
	maxHealth = 400
	health = 400
	self_weight = 200
	damage_coeff = list(BRUTE = 0.6, BURN = 0.8, TOX = 0.2, CLONE = 0, STAMINA = 1, OXY = 0)

	faction = list("hostile", "hellhound")

	ambient_sound = 'sound/f13npc/deathclaw_loop.ogg'

	sound_speak_chance = 5
	sound_speak = list('sound/f13npc/deathclaw_charge1.ogg','sound/f13npc/deathclaw_charge2.ogg','sound/f13npc/deathclaw_charge3.ogg')

	aggro_sound_chance = 50
	aggro_sound = 'sound/f13npc/deathclaw_charge1.ogg'

	death_sound = 'sound/f13npc/deathclaw_death.ogg'

	environment_smash = 3 // YOU CAN'T HIDE FROM ME
	force_threshold = 15
	melee_damage_lower = 25
	armour_penetration = 40
	melee_damage_upper = 40
	aggro_vision_range = 12
	see_in_dark = 8
	idle_vision_range = 7
	pixel_w = -16
	mob_size = MOB_SIZE_LARGE
	attacktext = "slashes"
	attack_sound = 'sound/weapons/bladeslice.ogg'

	XP = 65



/mob/living/simple_animal/hostile/deathclaw3
	name = "Hellhound"
	desc = "Hellhounds are an intelligent species of sentient, bipedal canines. They have sharp, powerful claws typically used to tunnel through earth and solid concrete. They are the highly evolved descendants of diamond dogs, having been mutated over two centuries by megaspell radiation."
	icon = 'icons/fallout/mobs/deathclaw.dmi'
	icon_state = "hellhound3"
	icon_living = "hellhound3"
	icon_dead = "hellhound_dead"
	speed = 2
	move_to_delay = 4
	turns_per_move = 5
	response_help = "touches"
	response_disarm = "tries to grab the hellhound by its large"
	response_harm = "hits the hellhound right in its large"
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab/deathclaw = 5, /obj/item/stack/sheet/animalhide/deathclaw=3)
	maxHealth = 400
	health = 400
	self_weight = 200
	damage_coeff = list(BRUTE = 0.6, BURN = 0.8, TOX = 0.2, CLONE = 0, STAMINA = 1, OXY = 0)

	faction = list("hostile", "hellhound")

	ambient_sound = 'sound/f13npc/deathclaw_loop.ogg'

	sound_speak_chance = 5
	sound_speak = list('sound/f13npc/deathclaw_charge1.ogg','sound/f13npc/deathclaw_charge2.ogg','sound/f13npc/deathclaw_charge3.ogg')

	aggro_sound_chance = 50
	aggro_sound = 'sound/f13npc/deathclaw_charge1.ogg'

	death_sound = 'sound/f13npc/deathclaw_death.ogg'

	environment_smash = 3 // YOU CAN'T HIDE FROM ME
	force_threshold = 15
	melee_damage_lower = 25
	armour_penetration = 40
	melee_damage_upper = 40
	aggro_vision_range = 12
	see_in_dark = 8
	idle_vision_range = 7
	pixel_w = -16
	mob_size = MOB_SIZE_LARGE
	attacktext = "slashes"
	attack_sound = 'sound/weapons/bladeslice.ogg'

	XP = 65