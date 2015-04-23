--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Survivors");
	CLASS.color = Color(255, 191, 0, 255);
	CLASS.wages = 0;
	CLASS.factions = {FACTION_MUTA};
	CLASS.isDefault = true;
	CLASS.description = "A civilian.";
	CLASS.defaultPhysDesc = "A worn out looking Survivor in way over his head.";
CLASS_SURV = CLASS:Register();