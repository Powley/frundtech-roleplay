--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "HK USP";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/w_pist_fokkususp.mdl";
	ITEM.weight = 1.5;
	ITEM.business = false;
	ITEM.weaponClass = "m9k_usp";
	ITEM.description = "A pistol primarily used by Military Remnants.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(-180, 180, 90);
	ITEM.attachmentOffsetVector = Vector(-4.19, 0, -8.54);
	ITEM.batch = 1;

ITEM:Register();