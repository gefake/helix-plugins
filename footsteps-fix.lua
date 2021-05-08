PLUGIN.name = "Remove Footsteps"
PLUGIN.description = "Prevents default footstep sound"
PLUGIN.author = "GeFake"

function PLUGIN:PlayerFootstep(client, position, foot, sound, volume)
	return false
end

function PLUGIN:EntityEmitSound(data)
    local ent = data.Entity
    if not IsValid(ent) or not ent:IsPlayer() then return end

    if (data.SoundName):find("player/footsteps") then
        return false
    end
end