FACTION = Clockwork.faction:New("Mutants");
 
FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.models = {
        female = {
                "models/half-dead/civilians/female_01.mdl",
                "models/half-dead/civilians/female_02.mdl",
                "models/half-dead/civilians/female_03.mdl",
                "models/half-dead/civilians/female_04.mdl",
                "models/half-dead/civilians/female_06.mdl",
                "models/half-dead/civilians/female_07.mdl",
                
        };
        male = {
                "models/half-dead/civilians/male_01.mdl",
                "models/half-dead/civilians/male_02.mdl",
                "models/half-dead/civilians/male_03.mdl",
                "models/half-dead/civilians/male_04.mdl",
                "models/half-dead/civilians/male_05.mdl",
                "models/half-dead/civilians/male_06.mdl",
                "models/half-dead/civilians/male_07.mdl",
                "models/half-dead/civilians/male_08.mdl",
                "models/half-dead/civilians/male_09.mdl",
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

FACTION_MUTA=FACTION:Register();