//Clown PDA is slippery.
/obj/item/device/pda/clown
	name = "clown pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/clown
	icon_state = "pda-clown"
	desc = "A portable microcomputer by Stable-Tec. The surface is coated with polytetrafluoroethylene and banana drippings."
	ttone = "honk"

/obj/item/device/pda/clown/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living/carbon))
		var/mob/living/carbon/M = AM
		if(M.slip(0, 6, src, NO_SLIP_WHEN_WALKING))
			if (ishuman(M) && (M.real_name != src.owner))
				if (istype(src.cartridge, /obj/item/weapon/cartridge/clown))
					var/obj/item/weapon/cartridge/clown/cart = src.cartridge
					if(cart.honk_charges < 5)
						cart.honk_charges++


// Special AI/pAI PDAs that cannot explode.
/obj/item/device/pda/ai
	icon_state = "NONE"
	ttone = "data"
	fon = 0
	detonate = 0

/obj/item/device/pda/ai/attack_self(mob/user)
	if ((honkamt > 0) && (prob(60)))//For clown virus.
		honkamt--
		playsound(loc, 'sound/items/bikehorn.ogg', 30, 1)
	return

/obj/item/device/pda/ai/pai
	ttone = "assist"



/obj/item/device/pda/medical
	name = "medical pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/medical
	icon_state = "pda-medical"

/obj/item/device/pda/viro
	name = "virology pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/medical
	icon_state = "pda-virology"

/obj/item/device/pda/engineering
	name = "engineering pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/engineering
	icon_state = "pda-engineer"

/obj/item/device/pda/security
	name = "security pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/security
	icon_state = "pda-security"

/obj/item/device/pda/detective
	name = "detective pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/detective
	icon_state = "pda-detective"

/obj/item/device/pda/warden
	name = "warden pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/security
	icon_state = "pda-warden"

/obj/item/device/pda/janitor
	name = "janitor pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/janitor
	icon_state = "pda-janitor"
	ttone = "slip"

/obj/item/device/pda/toxins
	name = "scientist pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/signal/toxins
	icon_state = "pda-science"
	ttone = "boom"

/obj/item/device/pda/mime
	name = "mime pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/mime
	icon_state = "pda-mime"
	silent = 1
	ttone = "silence"

/obj/item/device/pda/heads
	default_cartridge = /obj/item/weapon/cartridge/head
	icon_state = "pda-hop"

/obj/item/device/pda/heads/hop
	name = "head of personnel pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/hop
	icon_state = "pda-hop"

/obj/item/device/pda/heads/hos
	name = "head of security pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/hos
	icon_state = "pda-hos"

/obj/item/device/pda/heads/ce
	name = "chief engineer pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/ce
	icon_state = "pda-ce"

/obj/item/device/pda/heads/cmo
	name = "chief medical officer pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/cmo
	icon_state = "pda-cmo"

/obj/item/device/pda/heads/rd
	name = "research director pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/rd
	icon_state = "pda-rd"

/obj/item/device/pda/captain
	name = "captain pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/captain
	icon_state = "pda-captain"
	detonate = 0

/obj/item/device/pda/cargo
	name = "cargo technician pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/quartermaster
	icon_state = "pda-cargo"

/obj/item/device/pda/quartermaster
	name = "quartermaster pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/quartermaster
	icon_state = "pda-qm"

/obj/item/device/pda/shaftminer
	name = "shaft miner pipbuck"
	icon_state = "pda-miner"

/obj/item/device/pda/syndicate
	default_cartridge = /obj/item/weapon/cartridge/syndicate
	icon_state = "pda-syndi"
	name = "military PDA"
	owner = "John Doe"
	hidden = 1

/obj/item/device/pda/chaplain
	name = "chaplain pipbuck"
	icon_state = "pda-chaplain"
	ttone = "holy"

/obj/item/device/pda/lawyer
	name = "lawyer pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/lawyer
	icon_state = "pda-lawyer"
	ttone = "objection"

/obj/item/device/pda/botanist
	name = "botanist pipbuck"
	//default_cartridge = /obj/item/weapon/cartridge/botanist
	icon_state = "pda-hydro"

/obj/item/device/pda/roboticist
	name = "roboticist pipbuck"
	icon_state = "pda-roboticist"
	default_cartridge = /obj/item/weapon/cartridge/roboticist

/obj/item/device/pda/librarian
	name = "librarian pipbuck"
	icon_state = "pda-library"
	icon_alert = "pda-r-library"
	default_cartridge = /obj/item/weapon/cartridge/librarian
	desc = "A portable microcomputer by Stable-tec. This model is a WGW-11 series e-reader."
	note = "Congratulations, your station has chosen the Thinktronic 5290 WGW-11 Series E-reader and Personal Data Assistant!"
	silent = 1 //Quiet in the library!
	overlays_x_offset = -3

/obj/item/device/pda/clear
	name = "clear pipbuck"
	icon_state = "pda-clear"
	desc = "A portable microcomputer by Stable-Tec. This model is a special edition with a transparent case."
	note = "Congratulations, you have chosen the Thinktronic 5230 Personal Data Assistant Deluxe Special Max Turbo Limited Edition!"

/obj/item/device/pda/cook
	name = "cook pipbuck"
	icon_state = "pda-cook"

/obj/item/device/pda/bar
	name = "bartender pipbuck"
	icon_state = "pda-bartender"

/obj/item/device/pda/atmos
	name = "atmospherics pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/atmos
	icon_state = "pda-atmos"

/obj/item/device/pda/chemist
	name = "chemist pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/chemistry
	icon_state = "pda-chemistry"

/obj/item/device/pda/geneticist
	name = "geneticist pipbuck"
	default_cartridge = /obj/item/weapon/cartridge/medical
	icon_state = "pda-genetics"
