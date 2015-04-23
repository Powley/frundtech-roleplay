local DISEASE = Clockwork.disease:New("Sub-Mutant Syndrome"); -- Create our new disease.
DISEASE.description = "Looks like you've been infected like the millions before you, best hide this from the Military"; -- The description for the disease.
DISEASE.incubationTime = 5*60; -- The disease's incubation time in seconds. During incubation the disease is infectuous but the player will not experience symptoms.
DISEASE.chronic = true; -- Whether or not the disease is chronic (life lasting).
DISEASE.extraSickTime = 9999; -- How much extra time in hours it'll take before a disease automatically wears off.
DISEASE.immuneFactions = {MUTANT} -- Names of factions to be immune to the disease. Characters in these factions will be made immune upon spawn.
DISEASE.infectuous = true; -- Whether or not the disease is infectuous.
DISEASE.transmissionType = "contact"; -- How the disease transmits and infects others. You can pick contact, airborne or hybrid (contact & airborne mix).
DISEASE.severity = 10; -- Severity affects how often temporary effects/symptoms occur.
DISEASE.lethality = 0; -- Lethality (if enabled) will drain a player's health over time. Higher lethality means more damage.

function DISEASE:OnTemporaryEffect(player)
	player:EmitSound("ambient/voices/cough"..math.random(1, 4)..".wav");
end;

function DISEASE:PersistEffect(player)

end;

DISEASE:Register();