
local ITEM = Clockwork.item:New("portion_base"); 
	ITEM.name = "Crisps"; 
	ITEM.category = "Food";
	ITEM.cost = 5; 
	ITEM.model = "models/warz/consumables/bag_chips.mdl"; 
	ITEM.weight = 0.5;
	--ITEM.access = "F"; 
	ITEM.business = false;
	ITEM.description = "A bag of crisps, well, more like a bag of air with a few crisps if we're being honest."; 
	ITEM.batch = 1;
	ITEM.useText = "Eat";
	ITEM.alcohol = false;
	ITEM.pieces = 1;


function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 2, 0, 100) );
	
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();

