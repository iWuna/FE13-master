/datum/species/lizard
	// Reptilian humanoids with scaled skin and tails.
	name = "Zebra"
	id = "lizard"
	say_mod = "talk in rhyme"
	default_color = "00FF00"
	//species_traits = list(MUTCOLORS,EYECOLOR,LIPS)
	mutant_bodyparts = list("tail_human", "ears", "wings")
	mutant_organs = list(/obj/item/organ/tongue/lizard)
	default_features = list("mcolor" = "0F0", "tail" = "Smooth", "snout" = "Round", "horns" = "None", "frills" = "None", "spines" = "None", "body_markings" = "None", "legs" = "Normal Legs")
	attack_verb = "slash"
	roundstart = 1
	use_skintones = 0
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	meat = /obj/item/weapon/reagent_containers/food/snacks/meat/slab/human/mutant/lizard
	skinned_type = /obj/item/stack/sheet/animalhide/human
//	exotic_bloodtype = "L"

/datum/species/lizard/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_lizard_name(gender)

	var/randname = lizard_name(gender)

	if(lastname)
		randname += " [lastname]"

	return randname

//I wag in death
/datum/species/lizard/spec_death(gibbed, mob/living/carbon/human/H)
	if(H)
		H.endTailWag()

/*
 Lizard subspecies: ASHWALKERS
*/
/datum/species/lizard/ashwalker
	name = "Ash Walker"
	id = "ashlizard"
	limbs_id = "lizard"
	species_traits = list(MUTCOLORS,EYECOLOR,LIPS,NOBREATH,NOGUNS,DIGITIGRADE)