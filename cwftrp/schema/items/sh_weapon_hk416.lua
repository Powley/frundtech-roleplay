--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "HK 416";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/w_hk_416.mdl";
	ITEM.weight = 4;
	ITEM.business = false;
	ITEM.weaponClass = "m9k_m416";
	ITEM.description = "Used mostly by Military Remnants, this rifle has sought action throughout the years.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-1, 5, 3);
	ITEM.batch = 1;

ITEM:Register();