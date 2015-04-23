
local ITEM = Clockwork.item:New("portion_base"); -- Derives from the ammo_base item in Clockwork.
	ITEM.category = "Food"
	ITEM.name = "Melon"; -- What is the name of this item?
	ITEM.cost = 30; -- How much does this item cost?
	ITEM.model = "models/props_junk/watermelon01.mdl"; -- What is the model of this item?
	ITEM.weight = 3; -- What is the weight of the item in KG.
	--ITEM.access = "F"; -- What flags are required to purchase this item (remove the line to not require flags).
	ITEM.uniqueID = "melon"; -- This needs to be unique (remove the line to have a unique ID generated).
	ITEM.business = true; -- Is this item available for purchase at all?
	ITEM.description = "A round, juicy, delicious melon."; -- A short description of the item.
	ITEM.useText = "Eat";
	ITEM.batch = 1;
	ITEM.pieces = 10
ITEM:Register();
