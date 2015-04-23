--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Frundtech Scientific Expedition");
	CLASS.color = Color(255, 191, 0, 255);
	CLASS.wages = 0;
	CLASS.factions = {FACTION_FTEF};
	CLASS.isDefault = true;
	CLASS.description = "A Frundtech soldier.";
	CLASS.defaultPhysDesc = "A member of the Frundtech Expedition";
CLASS_FTEF = CLASS:Register();