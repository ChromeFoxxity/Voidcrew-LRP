/obj/item/research_notes
	name = "research notes"
	desc = "Valuable scientific data. Use it in a research console to scan it."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "paper"
	inhand_icon_state = "paper"
	w_class = WEIGHT_CLASS_SMALL
	///research points it holds
	var/value = 69
	///origin of the research
	var/origin_type = "debug"
	///if it ws merged with different origins to apply a bonus
	var/mixed = FALSE

/obj/item/research_notes/Initialize(mapload, _value, _origin_type)
	. = ..()
	if(_value)
		value = _value
	if(_origin_type)
		origin_type = _origin_type
	change_vol()

/obj/item/research_notes/examine(mob/user)
	. = ..()
	. += "<span class='notice'>It is worth [value] research points.</span>"

/// proc that changes name and icon depending on value
/obj/item/research_notes/proc/change_vol()
	if(value >= 10000)
		name = "revolutionary discovery in the field of [origin_type]"
		icon_state = "docs_verified"
		return
	else if(value >= 2500)
		name = "essay about [origin_type]"
		icon_state = "paper_words"
		return
	else if(value >= 100)
		name = "notes of [origin_type]"
		icon_state = "paperslip_words"
		return
	else
		name = "fragmentary data of [origin_type]"
		icon_state = "scrap"
		return

///proc when you slap research notes into another one, it applies a bonus if they are of different origin (only applied once)
/obj/item/research_notes/proc/merge(obj/item/research_notes/new_paper)
	var/bonus = min(value , new_paper.value)
	value = value + new_paper.value
	if(origin_type != new_paper.origin_type && !mixed)
		value += bonus * 0.3
		origin_type = "[origin_type] and [new_paper.origin_type]"
		mixed = TRUE
	change_vol()
	qdel(new_paper)

/obj/item/research_notes/attackby(obj/item/I, mob/user, params)
	. = ..()
	if(istype(I, /obj/item/research_notes))
		var/obj/item/research_notes/R = I
		merge(R)
		return TRUE

//research notes for ruins
/obj/item/research_notes/loot
	origin_type = "exotic particle physics"

/obj/item/research_notes/loot/tiny
	value = 250

/obj/item/research_notes/loot/small
	value = 1000

/obj/item/research_notes/loot/medium
	value = 2500

/obj/item/research_notes/loot/big
	value = 5000

/obj/item/research_notes/loot/genius//have a very good reason to give this one out
	value = 10000
