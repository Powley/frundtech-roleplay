--[[
	Plugin by iKosmonaut.com
--]]

local COMMAND = Clockwork.command:New("CharBodyGroupList");
COMMAND.tip = "Lists all valid bodygroups for a characters' current model.";
COMMAND.text = "<string Name>";
COMMAND.access = "s";
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local target = Clockwork.player:FindByID(arguments[1]);
	
	if (target) then
		local text = "Here's a list of available bodygroups for '".. target:GetModel() .."':";
		
		for i = 0, target:GetNumBodyGroups() - 1 do
			text = text .. "\n " .. i .. " = " .. target:GetBodygroupName(i) .. "(0-" .. target:GetBodygroupCount(i) .. ")";
		end;
		
		Clockwork.player:Notify(player, text);
	else
		Clockwork.player:Notify(player, arguments[1].." is not a valid character!");
	end;
end;

COMMAND:Register();