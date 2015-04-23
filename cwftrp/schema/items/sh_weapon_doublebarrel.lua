--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Double Barrel Shotgun";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/w_double_barrel_shotgun.mdl";
	ITEM.weight = 1.5;
	ITEM.business = false;
	ITEM.weaponClass = "m9k_dbarrel";
	ITEM.description = "Used mostly by civilians, this shotgun is mostly useless in a firefight";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = false;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-1, 5, 3);
	ITEM.batch = 1;

ITEM:Register();