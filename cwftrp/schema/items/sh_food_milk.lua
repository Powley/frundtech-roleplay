
local ITEM = Clockwork.item:New("portion_base"); 
	ITEM.category = "Food";
	ITEM.name = "Carton of milk"; 
	ITEM.cost = 5; 
	ITEM.model = "models/props_junk/garbage_milkcarton002a.mdl"; 
	ITEM.weight = .5;
	ITEM.uniqueID = "milk";
	ITEM.business = false; 
	ITEM.description = "Is this even edible after this amount of time?"; 
	ITEM.useText = "Drink";
	ITEM.batch = 1;
	ITEM.pieces = 1;


function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, 100) );
	
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
