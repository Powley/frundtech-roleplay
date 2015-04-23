
local ITEM = Clockwork.item:New("portion_base"); -- Derives from the ammo_base item in Clockwork.
	ITEM.category = "Food"
	ITEM.name = "Soda"; -- What is the name of this item?
	ITEM.cost = 15; -- How much does this item cost?
	ITEM.model = "models/warz/consumables/soda.mdl"; -- What is the model of this item?
	ITEM.weight = 1; -- What is the weight of the item in KG.
	--ITEM.access = "F"; -- What flags are required to purchase this item (remove the line to not require flags).
	ITEM.business = false; -- Is this item available for purchase at all?
	ITEM.description = "Cheap brand soda you can get if you're a peasant."; -- A short description of the item.
	ITEM.useText = "Drink";
	ITEM.batch = 1;
	ITEM.pieces = 1;
ITEM:Register();

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 2, 0, player:GetMaxHealth() ) );
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();