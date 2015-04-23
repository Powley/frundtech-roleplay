
local ITEM = Clockwork.item:New();
ITEM.name = "Chocolate Bar";
ITEM.cost = 6;
ITEM.model = "models/warz/consumables/bar_chocolate.mdl";
ITEM.weight = 0.8;
--ITEM.access = "v";
ITEM.useText = "Eat";
ITEM.category = "Consumables";
ITEM.business = false;
ITEM.description = "A bar of chocolate";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 2, 0, 100) );
	
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();