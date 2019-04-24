/datum/species/unicorn
	name = "Unicorn"
	id = "unicorn"
	default_color = "FFFFFF"
	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS)
	mutant_bodyparts = list("tail_human", "ears", "unihorn")
	default_features = list("mcolor" = "FFF", "tail_human" = "None", "ears" = "None", "wings" = "Angel", "unihorn" = "Simple")
	use_skintones = 1
	roundstart = 1
	blacklisted = 0
	limbs_id = "human"
	skinned_type = /obj/item/stack/sheet/animalhide/human

/datum/species/unicorn/on_species_gain(mob/living/carbon/C)
	. = ..()

/datum/species/unicorn/on_species_loss(mob/living/carbon/C)
	. = ..()