--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("custom_weapon");
	ITEM.name = "Woodaxe";
	ITEM.cost = 350;
	ITEM.model = "models/weapons/w_axe.mdl";
	ITEM.weight = 1;
	ITEM.business = false;
	ITEM.category = "Melee";
	ITEM.weaponClass = "cw_woodaxe";
	ITEM.description = "A wooden axe with a rusty blade at the end.";
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(-12, 2, 0);
	ITEM.loweredAngles = Angle(-25, 15, -80);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 255, 0);
	ITEM.attachmentOffsetVector = Vector(5, 5, -8);
ITEM:Register();