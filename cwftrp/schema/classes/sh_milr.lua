--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Military Remnants");
	CLASS.color = Color(255, 191, 0, 255);
	CLASS.wages = 0;
	CLASS.factions = {FACTION_MILR};
	CLASS.isDefault = true;
	CLASS.description = "A Soldier.";
	CLASS.defaultPhysDesc = "A soldier still wearing his uniform with pride.";
CLASS_MILR = CLASS:Register();