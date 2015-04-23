
local PLUGIN = PLUGIN;

-- Called when a player attempts to spawn a ragdoll.
function PLUGIN:PlayerSpawnRagdoll(player, model)
	if (!IsValid(player)) then return false; end;
	if (!Clockwork.player:HasFlags(player, "r")) then return false; end;
		
	if (!player:Alive() or player:IsRagdolled()) then
		Clockwork.player:Notify(player, "You cannot do this action at the moment!");
			
		return false;
	end;
end;

