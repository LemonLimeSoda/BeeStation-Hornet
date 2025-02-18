//==================================//
// !       Hateful Manacles       ! //
//==================================//
/datum/clockcult/scripture/slab/hateful_manacles
	name = "Hateful Manacles"
	desc = "Forms replicant manacles around a target's wrists that function like handcuffs, restraining the target."
	tip = "Handcuff a target at close range to subdue them for conversion or vitality extraction."
	button_icon_state = "Hateful Manacles"
	power_cost = 25
	invokation_time = 15
	invokation_text = list("Shackle the heretic...", "Break them in body and spirit!")
	slab_overlay = "hateful_manacles"
	use_time = 200
	cogs_required = 0
	category = SPELLTYPE_SERVITUDE

/datum/clockcult/scripture/slab/hateful_manacles/apply_effects(atom/A)
	. = ..()
	var/mob/living/carbon/M = A
	if(!istype(M))
		return FALSE
	if(is_servant_of_ratvar(M))
		return FALSE
	if(M.handcuffed)
		to_chat(invoker, span_brass("[M] is already restrained!"))
		return FALSE
	playsound(M, 'sound/weapons/handcuffs.ogg', 30, TRUE, -2)
	M.visible_message(span_danger("[invoker] forms a well of energy around [M], brass appearing at their wrists!"),\
						span_userdanger("[invoker] is trying to restrain you!"))
	if(do_after(invoker, 30, target=M))
		if(M.handcuffed)
			return FALSE
		var/obj/item/restraints/handcuffs/clockwork/restraints = new(M)
		if (!restraints.apply_cuffs(M, invoker))
			qdel(restraints)
			return TRUE
		restraints.item_flags |= DROPDEL
		log_combat(invoker, M, "handcuffed", src)
		return TRUE
	return FALSE

/obj/item/restraints/handcuffs/clockwork
	name = "replicant manacles"
	desc = "Heavy manacles made out of freezing-cold metal. It looks like brass, but feels much more solid."
	icon_state = "brass_manacles"
