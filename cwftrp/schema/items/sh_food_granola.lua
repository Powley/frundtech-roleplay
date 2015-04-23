
local ITEM = Clockwork.item:New();
ITEM.name = "Granola Bar";
ITEM.cost = 6;
ITEM.model = "models/warz/consumables/bar_granola.mdl";
ITEM.weight = 0.8;
--ITEM.access = "v";
ITEM.useText = "Eat";
ITEM.category = "Consumables";
ITEM.business = false;
ITEM.description = "It's not a bar of chocolate, that's for sure.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 2, 0, 100) );
	
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();