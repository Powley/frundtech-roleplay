--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Glock 18";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/s_dmgf_co1911.mdl";
	ITEM.weight = 2.5;
	ITEM.business = false;
	ITEM.weaponClass = "m9k_glock";
	ITEM.description = "A pistol primarily used by SWAT, not that they need it anymore";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(-180, 180, 90);
	ITEM.attachmentOffsetVector = Vector(-4.19, 0, -8.54);
	ITEM.batch = 1;

ITEM:Register();