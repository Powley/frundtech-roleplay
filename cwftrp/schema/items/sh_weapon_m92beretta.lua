--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "M92 Beretta";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/w_beretta_m92.mdl";
	ITEM.weight = 1.5;
	ITEM.business = false;
	ITEM.weaponClass = "m9k_m92beretta";
	ITEM.description = "A pistol primarily used by police of the town, many of the civilians raided the Station and found these.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(-180, 180, 90);
	ITEM.attachmentOffsetVector = Vector(-4.19, 0, -8.54);
	ITEM.batch = 1;

ITEM:Register();