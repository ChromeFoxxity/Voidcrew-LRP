/obj/item/gun/energy/e_gun/adv_stopping
	name = "advanced stopping revolver"
	desc = "An advanced energy revolver with the capacity to shoot both disabler and lethal lasers, as well as futuristic safari nets."
	icon = 'voidcrew/icons/obj/guns/energy.dmi'
	icon_state = "bsgun"
	inhand_icon_state = "gun"
	force = 7
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hos, /obj/item/ammo_casing/energy/laser/hos, /obj/item/ammo_casing/energy/trap)
	ammo_x_offset = 1
	shaded_charge = TRUE

/obj/item/gun/energy/e_gun/smg
	name = "\improper E-TAR SMG"
	desc = "A dual-mode energy gun capable of discharging weaker shots at a much faster rate than the standard energy gun."
	icon = 'voidcrew/icons/obj/guns/energy.dmi'
	icon_state = "esmg"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/smg, /obj/item/ammo_casing/energy/laser/smg)
	ammo_x_offset = 2
	charge_sections = 3
	/// VC WEAPONS TODO
	//automatic = 1
	weapon_weight = WEAPON_LIGHT

/obj/item/gun/energy/e_gun/iot
	name = "\improper E-SG 500 Second Edition"
	desc = "A improved version of the E-SG 255. It now includes two firing modes, disable and kill, while still keeping that sweed integrated computer. Please note that the screen is right next to the switch mode button."
	lefthand_file = 'icons/mob/inhands/weapons/64x_guns_left.dmi'
	righthand_file = 'icons/mob/inhands/weapons/64x_guns_right.dmi'
	icon = 'voidcrew/icons/obj/guns/energy.dmi'
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	icon_state = "iotshotgun"
	inhand_icon_state = "shotgun_combat"
	shaded_charge = 1
	w_class = WEIGHT_CLASS_BULKY
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/scatter/ultima, /obj/item/ammo_casing/energy/laser/ultima)
	/// VC WEAPONS TODO
	//var/obj/item/modular_computer/integratedNTOS
	//var/NTOS_type = /obj/item/modular_computer/internal

/obj/item/gun/energy/e_gun/hos/brazil
	name = "modified antique laser gun"
	desc = "It's somehow modified to have more firemodes."
	icon = 'voidcrew/icons/obj/guns/energy.dmi'
	icon_state = "capgun_brazil_hos"
	inhand_icon_state = "hoslaser"

/obj/item/gun/energy/e_gun/hos/brazil/true
	desc = "By using a original antique laser gun with a intact nuclear power cell, it is truly one of the finest weapons in this area of space."
	icon = 'voidcrew/icons/obj/guns/energy.dmi'
	icon_state = "capgun_hos"
	inhand_icon_state = "hoslaser"
	selfcharge = 1
