
local ITEM = Clockwork.item:New(nil, true);
ITEM.name = "Portion Base";
ITEM.useText = "Eat";
ITEM.weight = 0.25;
ITEM.description = "A portioned item."
ITEM.useSound = false;
ITEM.business = true;
ITEM.isBaseItem = true;
ITEM.category = "Food";
ITEM.pieces = 4; -- How many pieces it has. IE how many slices in a cake, how many wedges in a cheese thing.
ITEM:AddData("amount", -1, true) 

if (SERVER) then
	function ITEM:OnInstantiated()
		if self:GetData("amount") == -1 then
			self:SetData("amount", self.pieces);
		end
	end;
else

end;

if (CLIENT) then
	function ITEM:GetClientSideInfo()
		return Clockwork.kernel:AddMarkupLine("", self:GetData("amount").." remaining.");
	end
end

function ITEM:OnHUDPaintTargetID(ent, x, y, alpha) 
	local colorTargetID = Clockwork.option:GetColor("target_id");
	local colorWhite = Clockwork.option:GetColor("white");
	local color = self.color or colorTargetID;
	local entTab = ent:GetItemTable()
	Clockwork.kernel:DrawInfo("["..self:GetData("amount").."]", x, y+20, color, alpha);
end;


function ITEM:OnUse(player, itemEntity)
	if (self:GetData("amount") > 1) then
		self:SetData("amount", self:GetData("amount") - 1)
		if self("alcohol") == true then
			Clockwork.player:SetDrunk(player, self("expireTime"));
		end
		return false
	else
		if self("alcohol") == true then
			Clockwork.player:SetDrunk(player, self("expireTime"));
		end
	end;
end;

function ITEM:OnDrop(player, position) end;

Clockwork.item:Register(ITEM);