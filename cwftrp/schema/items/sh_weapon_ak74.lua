--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "AK-74";
	ITEM.cost = 0;
	ITEM.model = "models/weapons/w_tct_ak47.mdl";
	ITEM.weight = 4;
	ITEM.business = true;
	ITEM.weaponClass = "m9k_ak74";
	ITEM.description = "An automatic rifle, mass produced and known for it's reliablity";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-1, 5, 3);
	ITEM.batch = 1;

ITEM:Register();