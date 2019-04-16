/obj/structure/trap
	name = "IT'S A TARP"
	desc = "stepping on me is a guaranteed bad day"
	icon = 'icons/obj/hand_of_god_structures.dmi'
	icon_state = "trap"
	density = 0
	alpha = 30 //initially quite hidden when not "recharging"
	var/last_trigger = 0
	var/time_between_triggers = 600 //takes a minute to recharge

/obj/structure/trap/Crossed(atom/movable/AM)
	if(last_trigger + time_between_triggers > world.time)
		return
	alpha = initial(alpha)
	if(isliving(AM))
		var/mob/living/L = AM
		last_trigger = world.time
		alpha = 200
		trap_effect(L)
		animate(src, alpha = initial(alpha), time = time_between_triggers)

/obj/structure/trap/examine(mob/user)
	..()
	if(!isliving(user)) //bad ghosts, stop trying to powergame from beyond the grave
		return
	to_chat(user, "You reveal a trap!")
	alpha = 200
	animate(src, alpha = initial(alpha), time = time_between_triggers)


/obj/structure/trap/proc/trap_effect(mob/living/L)
	return

/obj/structure/trap/stun
	name = "shock trap"
	desc = "A trap that will shock you, it will burn your flesh and render you immobile, You'd better avoid it."
	icon_state = "trap-shock"

/obj/structure/trap/stun/trap_effect(mob/living/L)
	to_chat(L, "<span class='danger'><B>You are paralyzed from the intense shock!</B></span>")
	L.Weaken(5)
	var/turf/Lturf = get_turf(L)
	new /obj/effect/particle_effect/sparks/electricity(Lturf)
	new /obj/effect/particle_effect/sparks(Lturf)


/obj/structure/trap/fire
	name = "flame trap"
	desc = "A trap that will set you ablaze. You'd better avoid it."
	icon_state = "trap-fire"


/obj/structure/trap/fire/trap_effect(mob/living/L)
	to_chat(L, "<span class='danger'><B>Spontaneous combustion!</B></span>")
	L.Weaken(1)
	var/turf/Lturf = get_turf(L)
	new /obj/effect/hotspot(Lturf)
	new /obj/effect/particle_effect/sparks(Lturf)


/obj/structure/trap/chill
	name = "frost trap"
	desc = "A trap that will chill you to the bone. You'd better avoid it."
	icon_state = "trap-frost"


/obj/structure/trap/chill/trap_effect(mob/living/L)
	to_chat(L, "<span class='danger'><B>You're frozen solid!</B></span>")
	L.Weaken(1)
	L.bodytemperature -= 300
	new /obj/effect/particle_effect/sparks(get_turf(L))


/obj/structure/trap/damage
	name = "earth trap"
	desc = "A trap that will summon a small earthquake, just for you. You'd better avoid it."
	icon_state = "trap-earth"


/obj/structure/trap/damage/trap_effect(mob/living/L)
	to_chat(L, "<span class='danger'><B>The ground quakes beneath your feet!</B></span>")
	L.Weaken(5)
	L.adjustBruteLoss(35)
	var/turf/Lturf = get_turf(L)
	new /obj/effect/particle_effect/sparks(Lturf)
	new /obj/structure/flora/rock(Lturf)


/obj/structure/trap/ward
	name = "divine ward"
	desc = "A divine barrier, It looks like you could destroy it with enough effort, or wait for it to dissipate..."
	icon_state = "ward"
	density = 1
	time_between_triggers = 1200 //Exists for 2 minutes


/obj/structure/trap/ward/New()
	..()
	QDEL_IN(src, time_between_triggers)

/*/Попытка спиздить радиацию// 15:26, вроде успешно. //

#define DMG_TYPE_GIB 1
#define DMG_TYPE_ENERGY 2
#define DMG_TYPE_BURN 4
#define DMG_TYPE_BRAIN 8
#define DMG_TYPE_RADIATION 16
#define DMG_TYPE_IGNITION 32
#define DMG_TYPE_BIO 64


/var/list/obj/anomaly/anomalies = list()

/obj/rad 	//Не наносит урона
	name = "Anomaly"
	icon = 'icons/fallout/misc/anomalies.dmi'
	icon_state = "rad_low"
	var/damage_amount = 0 				//Сколько дамажит
	damage_type = TOX	//Тип дамага	//Спрайт при активации
	var/cooldown = 5 					//Кулдаун
	var/lasttime = 0
	var/list/trapped = new/list()
	var/idle_luminosity = 0
	var/activated_luminosity = 0
	var/sound = null
	var/delay = 0
//	var/attachedSpawner = null
	var/active_icon_state = null
	var/inactive_icon_state = null
	invisibility = 101
	icon = 'icons/fallout/misc/anomalies.dmi'
	anchored = 1
	pass_flags = PASSTABLE | PASSGRILLE

/obj/rad/rad_low
	damage_amount = 1
	sound = 'sound/f13effects/hma.ogg'
	icon_state = "rad_low"

/obj/rad/rad_medium
	damage_amount = 4
	sound = 'sound/f13effects/hma.ogg'
	icon_state = "rad_medium"

/obj/rad/rad_high
	damage_amount = 8
	sound = 'sound/f13effects/hma.ogg'
	icon_state = "rad_high"

/obj/rad/New()
	..()
	SSobj.processing.Remove(src)

/obj/rad/Destroy()
	..()
	SSobj.processing.Remove(src)

/obj/rad/Crossed(atom/A)
	..()
	if(lasttime + cooldown > world.time)
		return

	if(istype(A,/mob/living/carbon))
		var/mob/living/carbon/M = A
		src.trapped.Add(M)
		if(src.trapped.len >= 1)
			SSobj.processing |= src

/obj/rad/Uncrossed(atom/A)
	..()
	if (istype(A,/mob/living/carbon))
		var/mob/living/carbon/M = A
		src.trapped.Remove(M)
		SSobj.processing.Remove(src)

/obj/rad/process()
	if(src.trapped.len <= 0)
		SSobj.processing.Remove(src)
		return

	if(lasttime + cooldown > world.time)
		return

	for(var/atom/A in src.trapped)
		//if(istype(A, /mob/living))
		var/mob/living/M = A
		M.rad_act(src.damage_amount)
		if(istype(M, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = M
			if(istype(H.wear_id,/obj/item/device/pda))
				M << sound(src.sound, repeat = 0, wait = 0, volume = 50, channel = 3)
		src.lasttime = world.time
*/

