
local ITEM = Clockwork.item:New("ammo_base"); -- Derives from the ammo_base item in Clockwork.
	ITEM.name = "Revolver Ammo"; -- What is the name of this item?
	ITEM.cost = 40; -- How much does this item cost?
	ITEM.model = "models/items/357ammo.mdl"; -- What is the model of this item?
	ITEM.weight = 1; -- What is the weight of the item in KG.
	ITEM.business = false; -- Is this item available for purchase at all?
	ITEM.ammoClass = "m9k_ammo_357"; -- What type of ammo does this item give us?
	ITEM.ammoAmount = 60; -- How much ammo does this item give us?
ITEM:Register();