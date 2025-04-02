GLOBAL_LIST_INIT(character_height, list(
	"Moderate"=/datum/height/moderate,
	"Tall"=/datum/height/tall,
	"Towering"=/datum/height/towering,
	"Short"=/datum/height/short,
	"Tiny"=/datum/height/tiny,
	))

/datum/height
	var/name
	var/desc
	var/ephemeral = FALSE // This flaw is currently disabled and will not process

/datum/height/proc/on_mob_creation(mob/user)
	return

/datum/height/proc/apply_post_equipment(mob/user)
	return

/datum/height/proc/rost_on_life(mob/user)
	return

/mob/proc/has_rost(rost)
	return

/mob/living/carbon/human/has_rost(rost)
	if(!rost)
		return
	if(istype(rheight, rost))
		return TRUE

/mob/proc/get_rost(rost_type)
	return

/mob/living/carbon/human/get_rost(rost_type)
	if(!rost_type)
		return
	if(rheight.type != rost_type)
		return
	return rheight

/datum/height/moderate
	name = "Moderate"
	desc = "I'm normal one!"

/datum/height/tall
	name = "Tall"
	desc = "I'm tall!"

/datum/height/tall/rost_on_life(mob/living/carbon/human/character)
	character.transform = character.transform.Scale(1.25, 1.25)
	character.transform = character.transform.Translate(0, (0.25 * 16))
	character.update_transform()

/datum/height/short
	name = "Short"
	desc = "I'm short!"

/datum/height/short/rost_on_life(mob/living/carbon/human/character)
	character.transform = character.transform.Scale(0.75, 0.75)
	character.transform = character.transform.Translate(0, (0.25 * 16))
	character.update_transform()

/datum/height/towering
	name = "Towering"
	desc = "I'm so big!"

/datum/height/towering/rost_on_life(mob/living/carbon/human/character)
	character.transform = character.transform.Scale(1.5, 1.5)
	character.transform = character.transform.Translate(0, (0.25 * 16))
	character.update_transform()

/datum/height/tiny
	name = "Tiny"
	desc = "I'm so small!"

/datum/height/tiny/rost_on_life(mob/living/carbon/human/character)
	character.transform = character.transform.Scale(0.5, 0.5)
	character.transform = character.transform.Translate(0, (0.25 * 16))
	character.update_transform()

/mob/living/carbon/human
	var/datum/height
