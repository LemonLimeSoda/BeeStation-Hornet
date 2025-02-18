/obj/item/clothing/head/wizard
	name = "wizard hat"
	desc = "Strange-looking hat-wear that most certainly belongs to a real magic user."
	icon = 'icons/obj/clothing/head/wizard.dmi'
	worn_icon = 'icons/mob/clothing/head/wizard.dmi'
	icon_state = "wizard"
	item_state = "wizhat"
	gas_transfer_coefficient = 0.01 // IT'S MAGICAL OKAY JEEZ +1 TO NOT DIE
	armor_type = /datum/armor/head_wizard
	strip_delay = 50
	equip_delay_other = 50
	clothing_flags = SNUG_FIT | THICKMATERIAL
	resistance_flags = FIRE_PROOF | ACID_PROOF
	dog_fashion = /datum/dog_fashion/head/blue_wizard


/datum/armor/head_wizard
	melee = 30
	bullet = 20
	laser = 20
	energy = 20
	bomb = 20
	bio = 100
	rad = 20
	fire = 100
	acid = 100
	stamina = 50
	bleed = 60

/obj/item/clothing/head/wizard/red
	name = "red wizard hat"
	desc = "Strange-looking red hat-wear that most certainly belongs to a real magic user."
	icon_state = "redwizard"
	dog_fashion = /datum/dog_fashion/head/red_wizard

/obj/item/clothing/head/wizard/yellow
	name = "yellow wizard hat"
	desc = "Strange-looking yellow hat-wear that most certainly belongs to a powerful magic user."
	icon_state = "yellowwizard"
	dog_fashion = null

/obj/item/clothing/head/wizard/black
	name = "black wizard hat"
	desc = "Strange-looking black hat-wear that most certainly belongs to a real skeleton. Spooky."
	icon_state = "blackwizard"
	dog_fashion = null

/obj/item/clothing/head/wizard/fake
	name = "wizard hat"
	desc = "It has WIZZARD written across it in sequins. Comes with a cool beard."
	icon_state = "wizard-fake"
	gas_transfer_coefficient = 1
	armor_type = /datum/armor/none
	resistance_flags = FLAMMABLE
	dog_fashion = /datum/dog_fashion/head/blue_wizard
	clothing_flags = NONE

/obj/item/clothing/head/wizard/marisa
	name = "witch hat"
	desc = "Strange-looking hat-wear. Makes you want to cast fireballs."
	icon_state = "marisa"
	dog_fashion = null

/obj/item/clothing/head/wizard/magus
	name = "\improper Magus helm"
	desc = "A mysterious helmet that hums with an unearthly power."
	icon_state = "magus"
	item_state = null
	dog_fashion = null

/obj/item/clothing/head/wizard/santa
	name = "Santa's hat"
	desc = "Ho ho ho. Merrry X-mas!"
	icon_state = "santahat"
	item_state = "santahat"
	flags_inv = HIDEHAIR|HIDEFACIALHAIR
	dog_fashion = null

/obj/item/clothing/suit/wizrobe
	name = "wizard robe"
	desc = "A magnificent, gem-lined robe that seems to radiate power."
	icon = 'icons/obj/clothing/suits/wizard.dmi'
	icon_state = "wizard"
	worn_icon = 'icons/mob/clothing/suits/wizard.dmi'
	item_state = "wizrobe"
	gas_transfer_coefficient = 0.01
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor_type = /datum/armor/suit_wizrobe
	allowed = list(/obj/item/teleportation_scroll)
	flags_inv = HIDEJUMPSUIT
	strip_delay = 50
	equip_delay_other = 50
	resistance_flags = FIRE_PROOF | ACID_PROOF
	clothing_flags = THICKMATERIAL


/datum/armor/suit_wizrobe
	melee = 30
	bullet = 20
	laser = 20
	energy = 20
	bomb = 20
	bio = 100
	rad = 20
	fire = 100
	acid = 100
	stamina = 50
	bleed = 60

/obj/item/clothing/suit/wizrobe/ComponentInitialize()
	. = ..()
	add_anti_artifact()

/obj/item/clothing/suit/wizrobe/proc/add_anti_artifact()
	AddComponent(/datum/component/anti_artifact, INFINITY, FALSE, 100)

// fake robe shouldn't be 100% protective
/obj/item/clothing/suit/wizrobe/fake/add_anti_artifact()
	AddComponent(/datum/component/anti_artifact, INFINITY, FALSE, 75)

/obj/item/clothing/suit/wizrobe/red
	name = "red wizard robe"
	desc = "A magnificent red gem-lined robe that seems to radiate power."
	icon_state = "redwizard"
	item_state = "redwizrobe"

/obj/item/clothing/suit/wizrobe/yellow
	name = "yellow wizard robe"
	desc = "A magnificent yellow gem-lined robe that seems to radiate power."
	icon_state = "yellowwizard"
	item_state = "yellowwizrobe"

/obj/item/clothing/suit/wizrobe/black
	name = "black wizard robe"
	desc = "An unnerving black gem-lined robe that reeks of death and decay."
	icon_state = "blackwizard"
	item_state = "blackwizrobe"

/obj/item/clothing/suit/wizrobe/marisa
	name = "witch robe"
	desc = "Magic is all about the spell power, ZE!"
	icon_state = "marisa"
	item_state = null

/obj/item/clothing/suit/wizrobe/magusblue
	name = "\improper Magus robe"
	desc = "A set of armored robes that seem to radiate a dark power."
	icon_state = "magusblue"
	item_state = "magusblue"

/obj/item/clothing/suit/wizrobe/magusred
	name = "\improper Magus robe"
	desc = "A set of armored robes that seem to radiate a dark power."
	icon_state = "magusred"
	item_state = "magusred"


/obj/item/clothing/suit/wizrobe/santa
	name = "Santa's suit"
	desc = "Festive!"
	icon_state = "santa"
	item_state = "santa"

/obj/item/clothing/suit/wizrobe/fake
	name = "wizard robe"
	desc = "A rather dull blue robe meant to mimick real wizard robes."
	icon_state = "wizard-fake"
	item_state = "wizrobe"
	gas_transfer_coefficient = 1
	armor_type = /datum/armor/none
	resistance_flags = FLAMMABLE
	clothing_flags = NONE

/obj/item/clothing/head/wizard/marisa/fake
	name = "witch hat"
	desc = "Strange-looking hat-wear, makes you want to cast fireballs."
	icon_state = "marisa"
	gas_transfer_coefficient = 1
	armor_type = /datum/armor/none
	resistance_flags = FLAMMABLE
	clothing_flags = NONE

/obj/item/clothing/suit/wizrobe/marisa/fake
	name = "witch robe"
	desc = "Magic is all about the spell power, ZE!"
	icon_state = "marisa"
	item_state = "marisarobe"
	gas_transfer_coefficient = 1
	armor_type = /datum/armor/none
	resistance_flags = FLAMMABLE
	clothing_flags = NONE

/obj/item/clothing/suit/wizrobe/paper
	name = "papier-mache robe" // no non-latin characters!
	desc = "A robe held together by various bits of clear-tape and paste."
	icon_state = "wizard-paper"
	item_state = "wizard-paper"
	var/robe_charge = TRUE
	actions_types = list(/datum/action/item_action/stickmen)
	clothing_flags = NONE


/obj/item/clothing/suit/wizrobe/paper/ui_action_click(mob/user, action)
	stickmen()


/obj/item/clothing/suit/wizrobe/paper/verb/stickmen()
	set category = "Object"
	set name = "Summon Stick Minions"
	set src in usr
	if(!isliving(usr))
		return
	if(!robe_charge)
		to_chat(usr, span_warning("The robe's internal magic supply is still recharging!"))
		return

	usr.say("Rise, my creation! Off your page into this realm!", forced = "stickman summoning")
	playsound(src.loc, 'sound/magic/summon_magic.ogg', 50, 1, 1)
	var/mob/living/M = new /mob/living/simple_animal/hostile/stickman(get_turf(usr))
	var/list/factions = usr.faction
	M.faction = factions
	src.robe_charge = FALSE
	sleep(30)
	src.robe_charge = TRUE
	to_chat(usr, span_notice("The robe hums, its internal magic supply restored."))


//Shielded Armour

/obj/item/clothing/suit/space/hardsuit/shielded/wizard
	name = "battlemage armour"
	desc = "Not all wizards are afraid of getting up close and personal."
	icon_state = "battlemage"
	item_state = "battlemage"
	recharge_delay = 0 // no auto-recharge
	shield_integrity = 300
	shield_icon = "shield-red"
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/shielded/wizard
	armor_type = /datum/armor/shielded_wizard
	slowdown = 0
	resistance_flags = FIRE_PROOF | ACID_PROOF


/datum/armor/shielded_wizard
	melee = 30
	bullet = 20
	laser = 20
	energy = 20
	bomb = 20
	bio = 20
	rad = 20
	fire = 100
	acid = 100
	stamina = 70
	bleed = 70

/obj/item/clothing/suit/space/hardsuit/shielded/wizard/setup_shielding()
	AddComponent(/datum/component/shielded, max_integrity = 600, charge_recovery = 0 SECONDS, charge_increment_delay = 1 SECONDS, shield_icon = "shield-red")

/obj/item/clothing/head/helmet/space/hardsuit/shielded/wizard
	name = "battlemage helmet"
	desc = "A suitably impressive helmet.."
	icon_state = "battlemage"
	item_state = "battlemage"
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	armor_type = /datum/armor/shielded_wizard
	actions_types = null //No inbuilt light
	resistance_flags = FIRE_PROOF | ACID_PROOF


/datum/armor/shielded_wizard
	melee = 30
	bullet = 20
	laser = 20
	energy = 20
	bomb = 20
	bio = 20
	rad = 20
	fire = 100
	acid = 100
	stamina = 70
	bleed = 70

/obj/item/clothing/head/helmet/space/hardsuit/shielded/wizard/attack_self(mob/user)
	return

// The actual code for this is handled in the shielded component, see [/datum/component/shielded/proc/check_recharge_rune]
/obj/item/wizard_armour_charge
	name = "battlemage shield charges"
	desc = "A powerful rune that will increase the number of hits a suit of battlemage armour can take before failing.."
	icon = 'icons/effects/effects.dmi'
	icon_state = "electricity2"
	/// How many charges get restored
	var/added_shield = 400
