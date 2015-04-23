--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Winchester Carbine";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/w_winchester_1873.mdl";
	ITEM.weight = 2.5;
	ITEM.business = true;
	ITEM.weaponClass = "m9k_winchester73";
	ITEM.description = "A leather action rifle, quite common round these parts.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-1, 5, 3);
	ITEM.batch = 1;

ITEM:Register();