/datum/uplink_category/implants
	name = "Implants"
	weight = 2


/datum/uplink_item/implants
	category = /datum/uplink_category/implants
	surplus = 50

/datum/uplink_item/implants/freedom
	name = "Freedom Implant"
	desc = "Can be activated to release common restraints such as handcuffs, legcuffs, and even bolas tethered around the legs."
	item = /obj/item/storage/box/syndie_kit/imp_freedom
	cost = 5

/datum/uplink_item/implants/freedom/New()
	. = ..()
	desc += " Implant has enough energy for [FREEDOM_IMPLANT_CHARGES] uses before it becomes inert and harmlessly self-destructs."

/datum/uplink_item/implants/radio
	name = "Internal Syndicate Radio Implant"
	desc = "An implant injected into the body, allowing the use of an internal Syndicate radio. \
			Used just like a regular headset, but can be disabled to use external headsets normally and to avoid detection."
	item = /obj/item/storage/box/syndie_kit/imp_radio
	cost = 4
	restricted = TRUE


/datum/uplink_item/implants/stealthimplant
	name = "Stealth Implant"
	desc = "This one-of-a-kind implant will make you almost invisible if you play your cards right. \
			On activation, it will conceal you inside a chameleon cardboard box that is only revealed once someone bumps into it."
	item = /obj/item/storage/box/syndie_kit/imp_stealth
	cost = 8

/datum/uplink_item/implants/storage
	name = "Storage Implant"
	desc = "An implant injected into the body, and later activated at the user's will. It will open a small bluespace \
			pocket capable of storing two regular-sized items."
	item = /obj/item/storage/box/syndie_kit/imp_storage
	cost = 8

/datum/uplink_item/implants/uplink
	name = "Uplink Implant"
	desc = "An implant injected into the body, and later activated at the user's will. Has no telecrystals and must be charged by the use of physical telecrystals. \
			Undetectable (except via surgery), and excellent for escaping confinement."
	item = /obj/item/storage/box/syndie_kit // the actual uplink implant is generated later on in spawn_item
	cost = UPLINK_IMPLANT_TELECRYSTAL_COST
	// An empty uplink is kinda useless.
	surplus = 0
	restricted = TRUE

/datum/uplink_item/implants/thermals
	name = "Thermal Eyes"
	desc = "These cybernetic eyes will give you thermal vision. Comes with only a single-use autosurgeon, a corner cut to achieve a lower price point."
	item = /obj/item/autosurgeon/syndicate/thermal_eyes
	cost = 5
	surplus = 40 //monkestation edit: from 0 to 40

/datum/uplink_item/implants/xray
	name = "X-ray Vision Implant"
	desc = "These cybernetic eyes will give you X-ray vision. Comes with an autosurgeon."
	item = /obj/item/autosurgeon/syndicate/xray_eyes
	cost = 10
	surplus = 30 //monkestation edit: from 0 to 30

/datum/uplink_item/implants/hardlight
	name = "Hardlight Spear Implant"
	desc = "An implant that allows you to summon and control a hardlight spear. \
	Adding additional implants to your body will further refine the spear summoning process, allowing you to control up to 5 spears. \
	Wait a minimum of three seconds between injections. Exact mechanism for spear summoning is classified under Aetherofusion NDA."
	item = /obj/item/storage/box/syndie_kit/imp_hard_spear
	cost = 7

/datum/uplink_item/implants/uplink/spawn_item(spawn_path, mob/user, datum/uplink_handler/uplink_handler, atom/movable/source)
	var/obj/item/storage/box/syndie_kit/uplink_box = ..()
	uplink_box.name = "Uplink Implant Box"
	new /obj/item/implanter/uplink(uplink_box, uplink_handler)
	return uplink_box
