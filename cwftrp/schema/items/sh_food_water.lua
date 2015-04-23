
local ITEM = Clockwork.item:New("portion_base"); 
	ITEM.name = "Water bottle"; 
	ITEM.category = "Food";
	ITEM.cost = 5; 
	ITEM.model = "models/warz/consumables/water_s.mdl"; 
	ITEM.weight = 2;
	--ITEM.access = "F"; 
	ITEM.business = false;
	ITEM.description = "It may not be ice cold, but hey, waters is water, why are you complaining?"; 
	ITEM.batch = 1;
	ITEM.useText = "Drink";
	ITEM.alcohol = false;
	ITEM.pieces = 4;
ITEM:Register();

