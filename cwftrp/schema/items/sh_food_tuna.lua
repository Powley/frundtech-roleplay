
local ITEM = Clockwork.item:New("portion_base"); -- Derives from the ammo_base item in Clockwork.
	ITEM.category = "Food"
	ITEM.name = "Can of tuna"; -- What is the name of this item?
	ITEM.cost = 15; -- How much does this item cost?
	ITEM.model = "models/warz/consumables/can_tuna.mdl"; -- What is the model of this item?
	ITEM.weight = 1; -- What is the weight of the item in KG.
	--ITEM.access = "F"; -- What flags are required to purchase this item (remove the line to not require flags).
	ITEM.business = false; -- Is this item available for purchase at all?
	ITEM.description = "Fish in a can."; -- A short description of the item.
	ITEM.useText = "Eat";
	ITEM.batch = 1;
	ITEM.pieces = 4;
ITEM:Register();

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 10, 0, player:GetMaxHealth() ) );
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();