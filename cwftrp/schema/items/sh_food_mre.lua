
local ITEM = Clockwork.item:New("portion_base"); 
	ITEM.name = "Water bottle"; 
	ITEM.category = "Food";
	ITEM.cost = 5; 
	ITEM.model = "models/warz/consumables/bag_mre.mdl"; 
	ITEM.weight = 1;
	--ITEM.access = "F"; 
	ITEM.business = false;
	ITEM.description = "It's been sitting in the package for five years, are you really going to eat this?"; 
	ITEM.batch = 1;
	ITEM.useText = "Eat";
	ITEM.alcohol = false;
	ITEM.pieces = 4;
ITEM:Register();

