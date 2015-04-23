--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "M29 Revolver";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/w_m29_satan.mdl";
	ITEM.weight = 2;
	ITEM.business = false;
	ITEM.weaponClass = "m9k_m29satan";
	ITEM.description = "A pistol primarily used by gun-nuts, very rare in these parts.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = false;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(-180, 180, 90);
	ITEM.attachmentOffsetVector = Vector(-4.19, 0, -8.54);
	ITEM.batch = 1;

ITEM:Register();