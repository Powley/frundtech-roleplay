--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "M16A4 ACOG";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/w_dmg_m16ag.mdl";
	ITEM.weight = 3.5;
	ITEM.business = false;
	ITEM.weaponClass = "m9k_m16a4_acog";
	ITEM.description = "This semi-automatic rifle is known for it's accuracy.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-1, 5, 3);
	ITEM.batch = 1;

ITEM:Register();