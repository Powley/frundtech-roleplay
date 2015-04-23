--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Military Uniform";
ITEM.group = "aa3hacks";
ITEM.weight = 6;
ITEM.business = false;
ITEM.protection = 0.5;
ITEM.description = "A uniform worn mostly by the Military, most have abandoned their uniforms.";

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	if (string.lower( player:GetModel() ) == "models/rusty/natguard/male_02_.mdl") then
		return "models/aa3hacks/aa3male02.mdlda";
	end;
end;

ITEM:Register();