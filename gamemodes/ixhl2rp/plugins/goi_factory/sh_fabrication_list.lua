--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

/*
Resin Costs:
Bio = 6 Credits
Tech = 12 Credits (Price is designed to help CWU afford Product)
AdvancedTech = 120 Credits
*/

-- Food --
ix.fabrication:Register("proc_nutrient_bar", "bio", 1)
ix.fabrication:Register("proc_paste", "bio", 1)
ix.fabrication:Register("metropolicesupplements", "bio", 3)
ix.fabrication:Register("artificial_cheesepaste", "bio", 1)
ix.fabrication:Register("artificial_cheese", "bio", 1)
ix.fabrication:Register("artificial_meatpaste", "bio", 2)
ix.fabrication:Register("artificial_stew", "bio", 4)
ix.fabrication:Register("artificial_stirfry", "bio", 6)
ix.fabrication:Register("artificial_skewer", "bio", 1)
ix.fabrication:Register("artificial_meat", "bio", 2)
ix.fabrication:Register("baking_bread_slice", "bio", 1)
ix.fabrication:Register("baking_treat", "bio", 1)
ix.fabrication:Register("baking_doughnut", "bio", 1)
ix.fabrication:Register("baking_bread_half", "bio", 2)
ix.fabrication:Register("baking_bread", "bio", 3)
ix.fabrication:Register("pickled_egg", "bio", 1)
ix.fabrication:Register("pickled_leech", "bio", 1)
ix.fabrication:Register("pickled_vegetables", "bio", 2)
ix.fabrication:Register("food_crackers", "bio", 1)
ix.fabrication:Register("food_crisps", "bio", 1)
ix.fabrication:Register("food_peanuts", "bio", 1)
ix.fabrication:Register("leech_skewer", "bio", 1)
ix.fabrication:Register("comfort_toast", "bio", 1)
ix.fabrication:Register("comfort_pancake", "bio", 2)
ix.fabrication:Register("luxury_choc", "bio", 3)

-- Drinks --
ix.fabrication:Register("drink_breen_water", "bio", 1)
ix.fabrication:Register("drink_premium_water", "bio", 1)
ix.fabrication:Register("drink_sparkling_water", "bio", 1)
ix.fabrication:Register("drink_proc_beer", "bio", 1)
ix.fabrication:Register("drink_proc_bourbon", "bio", 1)
ix.fabrication:Register("drink_proc_fruit_juice", "bio", 1)
ix.fabrication:Register("drink_proc_lemonade", "bio", 1)
ix.fabrication:Register("drink_proc_vodka", "bio", 1)
ix.fabrication:Register("drink_proc_whiskey", "bio", 1)
ix.fabrication:Register("drink_banksoda_grey", "bio", 2)
ix.fabrication:Register("drink_beer", "bio", 3)
ix.fabrication:Register("drink_boboriginal", "bio", 2)
ix.fabrication:Register("drink_milk", "bio", 1)
ix.fabrication:Register("nutrientdrink", "bio", 2)
ix.fabrication:Register("drink_wi_coffee", "bio", 2)

-- Fabricator Only --
ix.fabrication:Register("fab_beef", "bio", 2)
ix.fabrication:Register("fab_butter", "bio", 1)
ix.fabrication:Register("fab_cheese", "bio", 1)
ix.fabrication:Register("fab_dish", "bio", 3)
ix.fabrication:Register("fab_fish", "bio", 3)
ix.fabrication:Register("fab_meatpaste", "bio", 2)
ix.fabrication:Register("fab_noddles", "bio", 1)
ix.fabrication:Register("fab_sandwich", "bio", 1)
ix.fabrication:Register("combinebattery", "tech", 10)

-- Audiobook Languages --
ix.fabrication:Register("languagebox_albanian", "tech", 5)
ix.fabrication:Register("languagebox_arabic", "tech", 5)
ix.fabrication:Register("languagebox_bengali", "tech", 5)
ix.fabrication:Register("languagebox_bosnian", "tech", 5)
ix.fabrication:Register("languagebox_bulgarian", "tech", 5)
ix.fabrication:Register("languagebox_chinese", "tech", 5)
ix.fabrication:Register("languagebox_croatian", "tech", 5)
ix.fabrication:Register("languagebox_czech", "tech", 5)
ix.fabrication:Register("languagebox_danish", "tech", 5)
ix.fabrication:Register("languagebox_dutch", "tech", 5)
ix.fabrication:Register("languagebox_finnish", "tech", 5)
ix.fabrication:Register("languagebox_flipino", "tech", 5)
ix.fabrication:Register("languagebox_french", "tech", 5)
ix.fabrication:Register("languagebox_gaeilge", "tech", 5)
ix.fabrication:Register("languagebox_gaelic", "tech", 5)
ix.fabrication:Register("languagebox_german", "tech", 5)
ix.fabrication:Register("languagebox_greek", "tech", 5)
ix.fabrication:Register("languagebox_hebrew", "tech", 5)
ix.fabrication:Register("languagebox_hindi", "tech", 5)
ix.fabrication:Register("languagebox_hungarian", "tech", 5)
ix.fabrication:Register("languagebox_indonesian", "tech", 5)
ix.fabrication:Register("languagebox_italian", "tech", 5)
ix.fabrication:Register("languagebox_japanese", "tech", 5)
ix.fabrication:Register("languagebox_korean", "tech", 5)
ix.fabrication:Register("languagebox_polish", "tech", 5)
ix.fabrication:Register("languagebox_portuguese", "tech", 5)
ix.fabrication:Register("languagebox_romanian", "tech", 5)
ix.fabrication:Register("languagebox_russian", "tech", 5)
ix.fabrication:Register("languagebox_serbian", "tech", 5)
ix.fabrication:Register("languagebox_spanish", "tech", 5)
ix.fabrication:Register("languagebox_swahili", "tech", 5)
ix.fabrication:Register("languagebox_swedish", "tech", 5)
ix.fabrication:Register("languagebox_turkish", "tech", 5)

-- Clothing --
ix.fabrication:Register("head_blue_beanie", "tech", 1)
ix.fabrication:Register("beanie_brown", "tech", 1)
ix.fabrication:Register("beanie_red", "tech", 1)
ix.fabrication:Register("beanie_grey", "tech", 1)
ix.fabrication:Register("head_green_beanie", "tech", 1)
ix.fabrication:Register("head_visor_cap", "tech", 1)
ix.fabrication:Register("head_military_cap", "tech", 1)
ix.fabrication:Register("head_chef_hat", "tech", 1)
ix.fabrication:Register("head_flat_cap", "tech", 1)
ix.fabrication:Register("head_boonie_hat", "tech", 1)
ix.fabrication:Register("face_bandana", "tech", 1)
ix.fabrication:Register("head_gasmask", "tech", 2)
ix.fabrication:Register("face_mask", "tech", 1)
ix.fabrication:Register("hardhat_blue", "tech", 1)
ix.fabrication:Register("head_hardhat", "tech", 1)
ix.fabrication:Register("hardhat_green", "tech", 1)
ix.fabrication:Register("hardhat_grey", "tech", 1)
ix.fabrication:Register("hardhat_white", "tech", 1)
ix.fabrication:Register("worker_blue", "tech", 2)
ix.fabrication:Register("worker_dark", "tech", 2)
ix.fabrication:Register("worker_green", "tech", 2)
ix.fabrication:Register("worker_grey", "tech", 2)
ix.fabrication:Register("worker_orange", "tech", 2)
ix.fabrication:Register("torso_red_worker_jacket", "tech", 2)
ix.fabrication:Register("torso_yellow_worker_jacket", "tech", 2)
ix.fabrication:Register("worker_uniform", "tech", 3)
ix.fabrication:Register("worker_uniform2", "tech", 3)
ix.fabrication:Register("white_hazmat_uniform", "tech", 3)
ix.fabrication:Register("orange_hazmat_uniform", "tech", 3)
ix.fabrication:Register("yellow_hazmat_uniform", "tech", 3)
ix.fabrication:Register("vortigaunt_head_hardhat", "tech", 2)
ix.fabrication:Register("vortigaunt_torso_cwu", "tech", 2)
ix.fabrication:Register("buttoned_black", "tech", 1)
ix.fabrication:Register("buttoned_beige", "tech", 1)
ix.fabrication:Register("buttoned_blue", "tech", 1)
ix.fabrication:Register("jumpsuit_black", "tech", 1)
ix.fabrication:Register("jumpsuit_blue", "tech", 1)
ix.fabrication:Register("medic_blue", "tech", 2)
ix.fabrication:Register("medic_green", "tech", 2)
ix.fabrication:Register("torso_medic_shirt", "tech", 2)
ix.fabrication:Register("medic_red", "tech", 2)
ix.fabrication:Register("buttoned_white", "tech", 1)
ix.fabrication:Register("jumpsuit_red", "tech", 1)
ix.fabrication:Register("buttoned_red", "tech", 1)
ix.fabrication:Register("jumpsuit_orange", "tech", 1)
ix.fabrication:Register("hands_medical_gloves", "tech", 1)
ix.fabrication:Register("buttoned_lightblue", "tech", 1)
ix.fabrication:Register("jumpsuit_grey", "tech", 1)
ix.fabrication:Register("buttoned_green", "tech", 1)
ix.fabrication:Register("hands_gloves", "tech", 1)
ix.fabrication:Register("hands_tipless_gloves", "tech", 1)
ix.fabrication:Register("jumpsuit", "tech", 1)
ix.fabrication:Register("buttoned_brown", "tech", 1)
ix.fabrication:Register("jumpsuit_brown", "tech", 1)
ix.fabrication:Register("torso_blue_rebel_uniform", "advancedtech", 1)
ix.fabrication:Register("torso_green_rebel_uniform", "advancedtech", 1)
ix.fabrication:Register("torso_medical_rebel_uniform", "advancedtech", 1)
ix.fabrication:Register("legs_blue_padded_pants", "tech", 2)
ix.fabrication:Register("legs_black_padded_pants", "tech", 2)
ix.fabrication:Register("legs_green_padded_pants", "tech", 2)
ix.fabrication:Register("torso_brown_trench", "advancedtech", 1)
ix.fabrication:Register("legs_civilian_beige", "tech", 1)
ix.fabrication:Register("legs_jumpsuit_black", "tech", 1)
ix.fabrication:Register("legs_civilian_black", "tech", 1)
ix.fabrication:Register("legs_jumpsuit_blue", "tech", 1)
ix.fabrication:Register("legs_blue_pants", "tech", 1)
ix.fabrication:Register("legs_jumpsuit_brown", "tech", 1)
ix.fabrication:Register("legs_civilian_brown", "tech", 1)
ix.fabrication:Register("legs_green_pants", "tech", 1)
ix.fabrication:Register("legs_grey_pants", "tech", 1)
ix.fabrication:Register("legs_civilian_darkred", "tech", 1)
ix.fabrication:Register("legs_jumpsuit_green", "tech", 1)
ix.fabrication:Register("legs_civilian_green", "tech", 1)
ix.fabrication:Register("legs_jumpsuit_grey", "tech", 1)
ix.fabrication:Register("legs_light_grey_pants", "tech", 1)
ix.fabrication:Register("legs_jumpsuit", "tech", 1)
ix.fabrication:Register("legs_civilian_lightblue", "tech", 1)
ix.fabrication:Register("legs_jumpsuit_orange", "tech", 1)
ix.fabrication:Register("legs_civilian_purple", "tech", 1)
ix.fabrication:Register("legs_jumpsuit_red", "tech", 1)
ix.fabrication:Register("legs_civilian_red", "tech", 1)
ix.fabrication:Register("legs_civilian_teal", "tech", 1)
ix.fabrication:Register("legs_civilian_yellow", "tech", 1)
ix.fabrication:Register("shoes_black_shoes", "tech", 1)
ix.fabrication:Register("shoes_leather_brown", "tech", 1)
ix.fabrication:Register("shoes_brown_shoes", "tech", 1)
ix.fabrication:Register("shoes_blue_shoes", "tech", 1)
ix.fabrication:Register("shoes_red", "tech", 1)
ix.fabrication:Register("shoes_leather_dark", "tech", 1)
ix.fabrication:Register("shoes_grey", "tech", 1)
ix.fabrication:Register("shoes_rain_boots", "tech", 1)
ix.fabrication:Register("torso_labcoat", "tech", 3)
ix.fabrication:Register("torso_black_coat", "tech", 1)
ix.fabrication:Register("denim_black", "tech", 1)
ix.fabrication:Register("khaki_black", "tech", 1)
ix.fabrication:Register("weather_black", "tech", 1)
ix.fabrication:Register("worn_black", "tech", 1)
ix.fabrication:Register("zipper_black", "tech", 1)
ix.fabrication:Register("denim_blue", "tech", 1)
ix.fabrication:Register("khaki_blue", "tech", 1)
ix.fabrication:Register("overcoat_blue", "tech", 1)
ix.fabrication:Register("plaid_blue", "tech", 1)
ix.fabrication:Register("raincoat_blue", "tech", 1)
ix.fabrication:Register("weather_blue", "tech", 1)
ix.fabrication:Register("wool_blue", "tech", 1)
ix.fabrication:Register("worn_blue", "tech", 1)
ix.fabrication:Register("zipper_blue", "tech", 1)
ix.fabrication:Register("torso_khaki_jacket", "tech", 1)
ix.fabrication:Register("overcoat_brown", "tech", 1)
ix.fabrication:Register("plaid_brown", "tech", 1)
ix.fabrication:Register("raincoat_brown", "tech", 1)
ix.fabrication:Register("weather_brown", "tech", 1)
ix.fabrication:Register("wool_brown", "tech", 1)
ix.fabrication:Register("weather_burgundy", "tech", 1)
ix.fabrication:Register("wool_burgundy", "tech", 1)
ix.fabrication:Register("casual_blue", "tech", 1)
ix.fabrication:Register("casual_bluered", "tech", 1)
ix.fabrication:Register("casual_brown", "tech", 1)
ix.fabrication:Register("casual_darkblue", "tech", 1)
ix.fabrication:Register("casual_darkred", "tech", 1)
ix.fabrication:Register("casual_green", "tech", 1)
ix.fabrication:Register("torso_black_jacket", "tech", 1)
ix.fabrication:Register("casual_greygreen", "tech", 1)
ix.fabrication:Register("casual_orange", "tech", 1)
ix.fabrication:Register("casual_purple", "tech", 1)
ix.fabrication:Register("casual_red", "tech", 1)
ix.fabrication:Register("weather_darkblue", "tech", 1)
ix.fabrication:Register("plaid_darkbrown", "tech", 1)
ix.fabrication:Register("raincoat_darkgreen", "tech", 1)
ix.fabrication:Register("plaid_darkgrey", "tech", 1)
ix.fabrication:Register("overcoat_dark", "tech", 1)
ix.fabrication:Register("plaid_dark", "tech", 1)
ix.fabrication:Register("raincoat_dark", "tech", 1)
ix.fabrication:Register("weather_fuscous", "tech", 1)
ix.fabrication:Register("denim_green", "tech", 1)
ix.fabrication:Register("jumpsuit_green", "tech", 1)
ix.fabrication:Register("khaki_green", "tech", 1)
ix.fabrication:Register("torso_green_jacket", "tech", 1)
ix.fabrication:Register("plaid_green", "tech", 1)
ix.fabrication:Register("raincoat_green", "tech", 1)
ix.fabrication:Register("weather_green", "tech", 1)
ix.fabrication:Register("torso_green_coat", "tech", 1)
ix.fabrication:Register("worn_green", "tech", 1)
ix.fabrication:Register("zipper_green", "tech", 1)
ix.fabrication:Register("torso_blue_shirt", "tech", 1)
ix.fabrication:Register("khaki_grey", "tech", 1)
ix.fabrication:Register("overcoat_grey", "tech", 1)
ix.fabrication:Register("torso_blue_jacket", "tech", 1)
ix.fabrication:Register("torso_black_stylilanguagejacket", "tech", 1)
ix.fabrication:Register("wool_green", "tech", 1)
ix.fabrication:Register("worn_grey", "tech", 1)
ix.fabrication:Register("wool_gunmetal", "tech", 1)
ix.fabrication:Register("khaki_hurricane", "tech", 1)
ix.fabrication:Register("zipper_kombu", "tech", 1)
ix.fabrication:Register("weather_lavender", "tech", 1)
ix.fabrication:Register("torso_leather_jacket", "tech", 1)
ix.fabrication:Register("plaid_lightbrown", "tech", 1)
ix.fabrication:Register("plaid_lightgrey", "tech", 1)
ix.fabrication:Register("torso_plaid_jacket", "tech", 1)
ix.fabrication:Register("khaki_matterhorn", "tech", 1)
ix.fabrication:Register("overcoat_murky", "tech", 1)
ix.fabrication:Register("raincoat_murky", "tech", 1)
ix.fabrication:Register("weather_murky", "tech", 1)
ix.fabrication:Register("zipper_oldburgundy", "tech", 1)
ix.fabrication:Register("wool_onyx", "tech", 1)
ix.fabrication:Register("weather_nickel", "tech", 1)
ix.fabrication:Register("khaki_orange", "tech", 1)
ix.fabrication:Register("overcoat_orange", "tech", 1)
ix.fabrication:Register("raincoat_orange", "tech", 1)
ix.fabrication:Register("weather_orange", "tech", 1)
ix.fabrication:Register("wool_orange", "tech", 1)
ix.fabrication:Register("zipper_orange", "tech", 1)
ix.fabrication:Register("khaki_purple", "tech", 1)
ix.fabrication:Register("overcoat_purple", "tech", 1)
ix.fabrication:Register("plaid_purple", "tech", 1)
ix.fabrication:Register("raincoat_purple", "tech", 1)
ix.fabrication:Register("weather_purple", "tech", 1)
ix.fabrication:Register("wool_purple", "tech", 1)
ix.fabrication:Register("zipper_purple", "tech", 1)
ix.fabrication:Register("denim_red", "tech", 1)
ix.fabrication:Register("khaki_red", "tech", 1)
ix.fabrication:Register("overcoat_red", "tech", 1)
ix.fabrication:Register("plaid_red", "tech", 1)
ix.fabrication:Register("raincoat_red", "tech", 1)
ix.fabrication:Register("torso_red_jacket", "tech", 1)
ix.fabrication:Register("torso_winter_jacket", "tech", 1)
ix.fabrication:Register("wool_red", "tech", 1)
ix.fabrication:Register("worn_red", "tech", 1)
ix.fabrication:Register("zipper_red", "tech", 1)
ix.fabrication:Register("overcoat_shady", "tech", 1)
ix.fabrication:Register("khaki_shuttle", "tech", 1)
ix.fabrication:Register("torso_sporty_jacket", "tech", 1)
ix.fabrication:Register("zipper_taupe", "tech", 1)
ix.fabrication:Register("overcoat_teal", "tech", 1)
ix.fabrication:Register("weather_teal", "tech", 1)
ix.fabrication:Register("weather_white", "tech", 1)
ix.fabrication:Register("raincoat_yellow", "tech", 1)
ix.fabrication:Register("weather_yellow", "tech", 1)
ix.fabrication:Register("torso_grey_jacket", "tech", 1)
ix.fabrication:Register("shoes_heels", "advancedtech", 4) -- It's well known that heels & dress shoes are actually bulletproof which is why they cost 500cr each...
ix.fabrication:Register("shoes_dress_shoes", "advancedtech", 4)
ix.fabrication:Register("vortigaunt_head_fedora", "tech", 3)
ix.fabrication:Register("vortigaunt_bandana", "tech", 1)
ix.fabrication:Register("vortigaunt_head_chefhat", "tech", 2)
ix.fabrication:Register("vortigaunt_head_hardhat", "tech", 2)
ix.fabrication:Register("vortigaunt_head_flatcap", "tech", 2)
ix.fabrication:Register("vortigaunt_head_boonie", "tech", 2)
ix.fabrication:Register("vortigaunt_torso_hoodie", "tech", 2)
ix.fabrication:Register("vortigaunt_torso_sweater", "tech", 2)
ix.fabrication:Register("vortigaunt_torso_light", "tech", 2)
ix.fabrication:Register("vortigaunt_torso_light2", "tech", 2)
ix.fabrication:Register("vortigaunt_bandages", "tech", 2)
ix.fabrication:Register("vortigaunt_belt", "tech", 2)

-- Ingredients --
ix.fabrication:Register("ing_herbs", "bio", 1)
ix.fabrication:Register("ing_margarine", "bio", 1)
ix.fabrication:Register("ing_noodles", "bio", 1)
ix.fabrication:Register("ing_spices", "bio", 1)
ix.fabrication:Register("ing_protein", "bio", 1)
ix.fabrication:Register("ing_sweet", "bio", 1)
ix.fabrication:Register("ing_salt", "bio", 1)
ix.fabrication:Register("ing_vegetable_pack", "bio", 1)
ix.fabrication:Register("ing_coffee_powder", "bio", 1)

-- Materials / Crafting --
ix.fabrication:Register("comp_scrap", "tech", 1)
ix.fabrication:Register("comp_cloth", "tech", 1)
ix.fabrication:Register("comp_plastic", "tech", 1)
ix.fabrication:Register("comp_screws", "tech", 1)
ix.fabrication:Register("comp_electronics", "tech", 1)
ix.fabrication:Register("comp_adhesive", "tech", 2)
ix.fabrication:Register("comp_charcoal", "tech", 2)
ix.fabrication:Register("comp_wood", "tech", 1)
ix.fabrication:Register("crafting_water", "bio", 1)
ix.fabrication:Register("drug_artificialfun", "bio", 2)
ix.fabrication:Register("comp_condensed_resin", "tech", 10)
ix.fabrication:Register("ing_flour", "bio", 1)
ix.fabrication:Register("ing_vinegar", "bio", 1)

-- Medical --
ix.fabrication:Register("comp_syringe", "tech", 1)
ix.fabrication:Register("comp_alcohol", "bio", 1)
ix.fabrication:Register("comp_chemicals", "bio", 2)
ix.fabrication:Register("bandage", "bio", 1)
ix.fabrication:Register("drink_saline", "bio", 2)

-- Tools --
ix.fabrication:Register("tool_scissors", "tech", 1)
ix.fabrication:Register("tool_spoon", "tech", 1)
ix.fabrication:Register("tool_wrench", "tech", 1)
ix.fabrication:Register("tool_toolkit", "tech", 4)
ix.fabrication:Register("buildingmaterials", "advancedtech", 1)
ix.fabrication:Register("tool_fryingpan", "tech", 1)
ix.fabrication:Register("tool_kettle", "tech", 1)
ix.fabrication:Register("tool_cookingpot", "tech", 1)
ix.fabrication:Register("tool_knife", "tech", 1)
ix.fabrication:Register("flashlight", "tech", 1)
ix.fabrication:Register("cont_lock_t1", "tech", 2)
ix.fabrication:Register("highquality_filter", "advancedtech", 1)
ix.fabrication:Register("tool_coffeemachine", "tech", 4)
ix.fabrication:Register("zippolighter", "tech", 2)

-- Melee Weapons --
ix.fabrication:Register("leadpipe", "tech", 2)
ix.fabrication:Register("clawhammer", "tech", 3)
ix.fabrication:Register("cleaver", "tech", 3)
ix.fabrication:Register("fireaxe", "advancedtech", 1)
ix.fabrication:Register("crowbar", "advancedtech", 1)
ix.fabrication:Register("fubar", "advancedtech", 2)
ix.fabrication:Register("hatchet", "tech", 4)
ix.fabrication:Register("kitknife", "tech", 1)
ix.fabrication:Register("machete", "tech", 3)
ix.fabrication:Register("pickaxe", "advancedtech", 1)
ix.fabrication:Register("sledgehammer", "advancedtech", 1)
ix.fabrication:Register("spade", "tech", 4)
ix.fabrication:Register("wrench", "tech", 3)
ix.fabrication:Register("riotshield", "advancedtech", 2)

-- Combine --
ix.fabrication:Register("tool_repair", "advancedtech", 2)
ix.fabrication:Register("rappel_gear", "advancedtech", 2)
ix.fabrication:Register("vortigaunt_slave_collar", "advancedtech", 1)
ix.fabrication:Register("vortigaunt_slave_hooks", "advancedtech", 1)
ix.fabrication:Register("vortigaunt_slave_shackles", "advancedtech", 1)
ix.fabrication:Register("combinelock", "advancedtech", 1)
ix.fabrication:Register("cwulock", "advancedtech", 1)
ix.fabrication:Register("cmrulock", "advancedtech", 1)
ix.fabrication:Register("doblock", "advancedtech", 1)
ix.fabrication:Register("moelock", "advancedtech", 1)

-- Electronic --
ix.fabrication:Register("grouplock", "advancedtech", 1)
ix.fabrication:Register("infestation_detector", "tech", 2)
ix.fabrication:Register("floppydisk", "advancedtech", 1)
ix.fabrication:Register("handheld_radio", "advancedtech", 1)
ix.fabrication:Register("musicradio_cmb", "advancedtech", 2)

-- Gear --
ix.fabrication:Register("smallbag", "advancedtech", 1)
ix.fabrication:Register("largebag", "advancedtech", 2)
ix.fabrication:Register("bullet_pouch", "advancedtech", 1)
ix.fabrication:Register("mag_pouch", "advancedtech", 1)
ix.fabrication:Register("medical_pouch", "advancedtech", 1)
ix.fabrication:Register("pos_terminal", "tech", 4)

-- Misc --
ix.fabrication:Register("paper", "bio", 1)
ix.fabrication:Register("black_ink", "bio", 2)
ix.fabrication:Register("notepad", "bio", 2)
ix.fabrication:Register("book", "bio", 3)
ix.fabrication:Register("lighter", "bio", 2)
ix.fabrication:Register("suitcase", "tech", 2)
ix.fabrication:Register("pin", "tech", 1)
ix.fabrication:Register("makeshift_filter", "advancedtech", 1)
