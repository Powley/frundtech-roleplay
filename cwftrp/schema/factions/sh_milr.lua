FACTION = Clockwork.faction:New("Military Remnants");
 
FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.models = {
        female = {
                "models/army/female_01.mdl",
		"models/army/female_02.mdl",
		"models/army/female_03.mdl",
		"models/army/female_04.mdl",
		"models/army/female_06.mdl",
		"models/army/female_07.mdl",
                
        };
        male = {
                "models/rusty/natguard/male_01.mdl",
                "models/rusty/natguard/male_02.mdl",
                "models/rusty/natguard/male_03.mdl",
                "models/rusty/natguard/male_04.mdl",
                "models/rusty/natguard/male_05.mdl",
                "models/rusty/natguard/male_06.mdl",
                "models/rusty/natguard/male_07.mdl",
                "models/rusty/natguard/male_08_.mdl",
                "models/rusty/natguard/male_09.mdl",

	
        };
};
-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
        if (name) then
                local models = self.models[ string.lower( player:QueryCharacter("gender") ) ];
               
                if (models) then
                        player:SetCharacterData("model", models[ math.random(#models) ], true);
                       
                        Clockwork.player:SetName(player, name, true);
                end;
        else
                return false, "You need to specify a name as the third argument!";
        end;
end;

FACTION_MILR=FACTION:Register();