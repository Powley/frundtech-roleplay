
local PLUGIN = PLUGIN;

-- Called whe the map entities are initialized.
function PLUGIN:InitPostEntity()
	--[[
		This is a silly way to prevent removing flags 
		that are only given manually.
	--]]
	for k, v in pairs(self.userGroups) do
		for i = 1, #v do
			local flag = string.sub(v, i, i);

			if (!string.find(self.reset, flag)) then
				self.reset = self.reset..flag;
			end;
		end;
	end;

	for k, v in pairs(self.donatorRanks) do
		for i = 1, #v do
			local flag = string.sub(v, i, i);

			if (!string.find(self.reset, flag)) then
				self.reset = self.reset..flag;
			end;
		end;
	end;
end;

-- Called when a player's data has loaded.
function PLUGIN:PlayerDataLoaded(player)
	local steamID = player:SteamID();

	http.Fetch(PLUGIN.API.."/donation/get/"..steamID, function(body, length, headers, code)
		local bSuccess, value = pcall(Clockwork.json.Decode, Clockwork.json, body);
				
		if (bSuccess and value != nil) then
			if (value.steamid != steamID) then
				ErrorNoHalt("[Clockwork] The SteamID returned by the donation API did not match!\n");
				return;
			end;

			if (value.active) then
				player.cwDonation = value.type;
				player.cwLastDonation = value.timestamp;
			end;
		end;
	end);
end;

-- Called when a player's character has initialized.
function PLUGIN:PlayerCharacterInitialized(player)
	local flagList = Clockwork.config:Get("default_flags"):Get();
	local playerFlags = player:GetFlags();
	local userGroup = player:GetUserGroup();

	if (self.userGroups[userGroup]) then
		flagList = flagList..self.userGroups[userGroup];
	end;

	if (player.cwDonation and self.donatorRanks[player.cwDonation]) then
		flagList = flagList..self.donatorRanks[player.cwDonation];
	end;

	Clockwork.player:TakeFlags(player, self.reset);
	Clockwork.player:GiveFlags(player, flagList);
end;
