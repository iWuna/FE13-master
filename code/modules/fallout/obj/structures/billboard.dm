//Fallout 13 decorative billboards directory

/obj/structure/billboard
	name = "billboard"
	desc = "Shitspawn detected!<br>Please report the admin abuse immediately!<br>Just kidding, nevermind."
	icon_state = "null"
	density = 1
	anchored = 1
	layer = 5
	icon = 'icons/fallout/machines/64x64.dmi'
	resistance_flags = INDESTRUCTIBLE

/obj/structure/billboard/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

/obj/structure/billboard/ritas
	name = "Rita's Cafe billboard"
	desc = "A defaced pre-War ad for Rita's Cafe.<br>The wasteland has taken its toll on the board."
	icon_state = "ritas1"

/obj/structure/billboard/ritas/New()
	..()
	icon_state = pick("ritas2","ritas3","ritas4")

/obj/structure/billboard/ritas/pristine
	name = "pristine Rita's Cafe billboard"
	desc = "A pre-War ad for Rita's Cafe.<br>Oddly enough, it's good as new."
	icon_state = "ritas1"

/obj/structure/billboard/ritas/pristine/New()
	..()
	icon_state = "ritas1"

/obj/structure/billboard/cola
	name = "Sparkle-Cola billboard"
	desc = "A defaced pre-War ad for Sparkle-Cola.<br>The wasteland has taken its toll on the board."
	icon_state = "cola1"

/obj/structure/billboard/cola/New()
	..()
	icon_state = pick("cola2","cola3","cola4")

/obj/structure/billboard/cola/pristine
	name = "pristine Sparkle-Cola billboard"
	desc = "A pre-War ad for Sparkle-Cola.<br>Oddly enough, it's good as new."
	icon_state = "cola1"

/obj/structure/billboard/cola/pristine/New()
	..()
	icon_state = "cola1"

/obj/structure/billboard/cola/cola_shop
	name = "pristine Sparkle-Cola billboard"
	desc = "A pre-War ad for Sparkle-Cola.<br>Oddly enough, it's good as new."
	icon_state = "cola_shop"

/obj/structure/billboard/cola/cola_shop/New()
	..()
	icon_state = "cola_shop"

/obj/structure/billboard/stabletec
	name = "pristine Stable-Tec billboard"
	desc = "A pre-War ad for Stable-Tec.<br>Oddly enough, huh, i think it they saved a few..."
	icon_state = "stable_tec"

/obj/structure/billboard/applejack
	name = "pristine RobronCo billboard"
	desc = "A pre-War ad for RobronCo.<br>Oddly enough, hell, this is robot of ministry mare?..."
	icon_state = "giddyup"

/obj/structure/billboard/foefilm
	name = "pristine 'new' film billboard"
	desc = "A pre-War ad for Film.<br>Oddly enough, Uhm, film about wasteland? what?."
	icon_state = "giddyup"

/obj/structure/billboard/applejack2
	name = "Sweet Apple Acres billboard"
	desc = "A pre-War ad for RobronCo.<br>The wasteland has taken its toll on the board. Someone write word SUCK and others..."
	icon_state = "sweetapple"