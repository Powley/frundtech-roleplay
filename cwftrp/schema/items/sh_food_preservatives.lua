
local ITEM = Clockwork.item:New("portion_base"); 
	ITEM.name = "Preservatives"; 
	ITEM.category = "Food";
	ITEM.cost = 5; 
	ITEM.model = "models/props_lab/jar01b.mdl"; 
	ITEM.weight = 0.5;
	--ITEM.access = "F"; 
	ITEM.business = false;
	ITEM.description = "A tinned can, it slushes when you shake it."; 
	ITEM.batch = 1;
	ITEM.useText = "Eat";
	ITEM.alcohol = false;
	ITEM.pieces = 4;


function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 20, 0, 100) );
	
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();

