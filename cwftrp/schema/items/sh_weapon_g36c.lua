--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "G36c";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/w_hk_g36c.mdl";
	ITEM.weight = 4;
	ITEM.business = false;
	ITEM.weaponClass = "m9k_g36";
	ITEM.description = "A rare rifle in these parts, used by PMC's mostly.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-1, 5, 3);
	ITEM.batch = 1;

ITEM:Register();