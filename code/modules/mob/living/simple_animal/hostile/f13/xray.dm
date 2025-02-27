//////////////////////////////
// NCR DESERTER MERCENARIES //
//////////////////////////////

/mob/living/simple_animal/hostile/xray
	name = "NCR deserter"
	desc = "A once proud member of the NCR with a chip on their shoulder."
	icon = 'icons/fallout/mobs/humans/fallout_npc.dmi'
	icon_state = "deserter_melee"
	icon_living = "deserter_melee"
	icon_dead = null
	icon_gib = "syndicate_gib"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	speak = list("Better this than the Mojave, I guess...", "Screw California!", "Well, it was this or be a Legion slampig...", "MARCHIN', SINGIN', HAVIN' A BALL, HEARD THAT KIMBALL'S DICK WAS SMALL!", "I'm an old-timer. I wouldn't have deserted if Tandi was still around...", "Nowhere to go... not east... nor west...", "It ain't me...")
	speak_chance = 4
	turns_per_move = 5
	response_help_simple = "pokes"
	response_disarm_simple = "shoves"
	response_harm_simple = "hits"
	speed = 1
	maxHealth = 200
	health = 200
	harm_intent_damage = 8
	melee_damage_lower = 25
	melee_damage_upper = 50
	attack_verb_simple = "punches"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	a_intent = INTENT_HARM
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_grunt, /obj/item/shovel/trench)
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("xray")
	check_friendly_fire = 1
	status_flags = CANPUSH
	del_on_death = 1

/obj/effect/mob_spawn/human/corpse/xray_grunt
	id_job = "NCR Deserter"
	hair_style = "Bald"
	facial_hair_style = "Shaved"
	outfit = /datum/outfit/xraycompanygrunt

/datum/outfit/xraycompanygrunt
	name = "NCR Deserter"
	head = /obj/item/clothing/head/f13/ncr/old
	uniform = /obj/item/clothing/under/f13/exile
	suit = /obj/item/clothing/suit/armor/f13/exile/ncrexile
	shoes = /obj/item/clothing/shoes/f13/military/ncr
	gloves = /obj/item/clothing/gloves/f13/leather/fingerless
	id = /obj/item/card/id/rusted
	mask = /obj/item/clothing/mask/ncr_facewrap
	glasses = /obj/item/clothing/glasses/f13/biker
	belt = /obj/item/storage/belt/military/alt

/mob/living/simple_animal/hostile/xray/ranged
	icon_state = "deserter_pistol"
	icon_living = "deserter_pistol"
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_grunt, /obj/item/gun/ballistic/automatic/pistol/beretta)
	ranged = 1
	maxHealth = 200
	health = 200
	retreat_distance = 4
	minimum_distance = 6
	projectiletype = /obj/item/projectile/bullet/c9mm/op
	projectilesound = 'sound/f13weapons/9mm.ogg'

/mob/living/simple_animal/hostile/xray/ranged/rifle
	icon_state = "deserter_rifle"
	icon_living = "deserter_rifle"
	projectiletype = /obj/item/projectile/bullet/a556/match
	projectilesound = 'sound/f13weapons/varmint_rifle.ogg'
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_grunt, /obj/item/gun/ballistic/automatic/service)

/mob/living/simple_animal/hostile/xray/ranged/rifle/burst
	extra_projectiles = 3
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_grunt, /obj/item/gun/ballistic/automatic/assault_carbine)

/mob/living/simple_animal/hostile/xray/ranged/shotgun
	icon_state = "deserter_shotgun"
	icon_living = "deserter_shotgun"
	projectiletype = /obj/item/projectile/bullet/shotgun_slug
	projectilesound = 'sound/f13weapons/shotgun.ogg'
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_grunt, /obj/item/gun/ballistic/shotgun/trench)

/mob/living/simple_animal/hostile/xray/marauder
	name = "NCR Ranger Deserter"
	desc = "A once proud member of the NCR turned thief. This one is clad in probably stolen valor."
	icon_state = "marauder_pistol"
	icon_living = "marauder_pistol"
	ranged = 1
	maxHealth = 450
	health = 450
	retreat_distance = 0
	minimum_distance = 4
	projectiletype = /obj/item/projectile/bullet/a127mm
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_marauder, /obj/item/gun/ballistic/automatic/pistol/pistol127)
	projectilesound = 'sound/f13weapons/magnum_fire.ogg'
	stat_attack = UNCONSCIOUS

/obj/effect/mob_spawn/human/corpse/xray_marauder
	id_job = "NCR Ranger Deserter"
	outfit = /datum/outfit/xraycompanymarauder

/datum/outfit/xraycompanymarauder
	name = "NCR Ranger Deserter"
	head = /obj/item/clothing/head/helmet/f13/rangerimitation
	uniform = /obj/item/clothing/under/f13/dbdu
	suit = /obj/item/clothing/suit/armor/f13/rangercombat/marine
	shoes = /obj/item/clothing/shoes/f13/military/leather
	gloves = /obj/item/clothing/gloves/patrol
	id = /obj/item/card/id/rusted
	belt = /obj/item/storage/belt/military/leather

/mob/living/simple_animal/hostile/xray/marauder/rifle
	icon_state = "marauder_rifle"
	icon_living = "marauder_rifle"
	projectiletype = /obj/item/projectile/bullet/a556/match
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_marauder, /obj/item/gun/ballistic/automatic/marksman)
	projectilesound = 'sound/f13weapons/marksman_rifle.ogg'

/mob/living/simple_animal/hostile/xray/marauder/sniper
	icon_state = "marauder_sniper"
	icon_living = "marauder_sniper"
	projectiletype = /obj/item/projectile/bullet/a762/match
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_marauder, /obj/item/gun/ballistic/automatic/marksman/sniper)
	projectilesound = 'sound/f13weapons/hunting_rifle.ogg'

/mob/living/simple_animal/hostile/xray/marauder/sniper/laser
	icon_state = "marauder_laser"
	icon_living = "marauder_laser"
	projectiletype = /obj/item/projectile/beam/laser/wattz2k
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_marauder, /obj/item/gun/energy/laser/wattz2k)
	projectilesound = 'sound/weapons/laser.ogg'

/mob/living/simple_animal/hostile/xray/marauder/assault
	icon_state = "marauder_assault"
	icon_living = "marauder_assault"
	projectiletype = /obj/item/projectile/bullet/a556/match
	extra_projectiles = 3
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_marauder, /obj/item/gun/ballistic/automatic/assault_carbine)
	projectilesound = 'sound/f13weapons/assault_carbine.ogg'

/mob/living/simple_animal/hostile/xray/marauder/boss
	name = "NCR Deserter Heavy"
	desc = "A once proud member of the NCR turned cutthroat. This one jacked themselves some pre-war marine combat gear."
	icon_state = "mmarauder_mg"
	icon_living = "mmarauder_mg"
	maxHealth = 1100
	health = 1100
	projectiletype = /obj/item/projectile/bullet/a50MG
	extra_projectiles = 4
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_marauder_boss, /obj/item/gun/ballistic/automatic/m2a1)
	projectilesound = 'sound/f13weapons/antimaterielfire.ogg'

/mob/living/simple_animal/hostile/xray/marauder/boss/light
	icon_state = "mmarauder_rifle"
	icon_living = "mmarauder_rifle"
	projectiletype = /obj/item/projectile/bullet/a556/match
	extra_projectiles = 3
	loot = list(/obj/effect/mob_spawn/human/corpse/xray_marauder_boss, /obj/item/gun/ballistic/automatic/lsw)
	projectilesound = 'sound/f13weapons/assault_carbine.ogg'

/obj/effect/mob_spawn/human/corpse/xray_marauder_boss
	id_job = "NCR Deserter Heavy"
	outfit = /datum/outfit/xraycompanyheavymarauder

/datum/outfit/xraycompanyheavymarauder
	name = "NCR Deserter Heavy"
	head = /obj/item/clothing/head/helmet/f13/combat/marine
	uniform = /obj/item/clothing/under/f13/recon/marine
	suit = /obj/item/clothing/suit/armor/f13/combat/marine
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/rusted
	belt = /obj/item/storage/belt/military


