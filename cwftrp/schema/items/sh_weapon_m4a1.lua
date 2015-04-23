--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "M4A1";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/w_m4a1_iron.mdl";
	ITEM.weight = 4;
	ITEM.business = false;
	ITEM.weaponClass = "m9k_m4a1";
	ITEM.description = "A automatic rifle in these parts, used by everyone.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-1, 5, 3);
	ITEM.batch = 1;

ITEM:Register();