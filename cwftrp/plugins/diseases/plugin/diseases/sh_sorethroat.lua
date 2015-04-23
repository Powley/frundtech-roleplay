local DISEASE = Clockwork.disease:New("Sore throat");
DISEASE.description = "A sore throat, it's not exactly dangerous, but it's contagious.";
DISEASE.incubationTime = 5*10;
DISEASE.infectuous = true;
DISEASE.immuneFactions = {}
DISEASE.transmissionType = "hybrid";
DISEASE.severity = 40;
DISEASE.lethality = 0;

function DISEASE:OnTemporaryEffect(player)
	player:EmitSound("ambient/voices/cough"..math.random(1, 4)..".wav");
end;

DISEASE:Register();