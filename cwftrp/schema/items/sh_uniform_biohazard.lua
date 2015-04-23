
local ITEM = Clockwork.item:New("clothes_base"); -- Derives from the ammo_base item in Clockwork.
	ITEM.name = "Frundtech Biohazard Suit"; -- What is the name of this item?
	ITEM.cost = 0; -- How much does this item cost?
	ITEM.weight = 6; -- What is the weight of the item in KG.
	ITEM.business = false; -- Is this item available for purchase at all?
	ITEM.description = "A biohazard suit used to protect against infection. This suit is specifically designed by Frundtech."; -- A short description of the item.
	ITEM.replacement = "models/cakez/blacklight/fox_sa.mdl";
	ITEM.protection = .2;
	ITEM.batch = 1;
ITEM:Register();
