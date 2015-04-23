--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "KRISS Vector";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/w_kriss_vector.mdl";
	ITEM.weight = 2.5;
	ITEM.business = false;
	ITEM.weaponClass = "m9k_vector";
	ITEM.description = "A sub-machinegun, used primarily by Military Remnants.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-1, 5, 3);
	ITEM.batch = 1;

ITEM:Register();