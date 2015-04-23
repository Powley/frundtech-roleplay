FACTION = Clockwork.faction:New("Frundtech Scientific Expedition");
 
FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.models = {
        female = {
                "models/half-dead/metroll/f1b1.mdl",
		"models/half-dead/metroll/f2b1.mdl",
		"models/half-dead/metroll/f3b1.mdl",
		"models/half-dead/metroll/f4b1.mdl",
		"models/half-dead/metroll/f6b1.mdl",
		"models/half-dead/metroll/f7b1.mdl",
                
        };
        male = {
                "models/half-dead/metroll/a1b1.mdl",
                "models/half-dead/metroll/a2b1.mdl",
                "models/half-dead/metroll/a3b1.mdl",
                "models/half-dead/metroll/a4b1.mdl",
                "models/half-dead/metroll/a5b1.mdl",
                "models/half-dead/metroll/a6b1.mdl",
                "models/half-dead/metroll/m1b1.mdl",
                "models/half-dead/metroll/m2b1.mdl",
		"models/half-dead/metroll/m3b1.mdl",
		"models/half-dead/metroll/m4b1.mdl",
		"models/half-dead/metroll/m5b1.mdl",
		"models/half-dead/metroll/m6b1.mdl",
		"models/half-dead/metroll/m7b1.mdl",
		"models/half-dead/metroll/m8b1.mdl",
		"models/half-dead/metroll/m9b1.mdl",
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

FACTION_FTEF=FACTION:Register();