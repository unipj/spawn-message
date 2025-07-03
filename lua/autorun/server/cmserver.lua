if(!SERVER) then return end

util.AddNetworkString("ConnectionMsg")

local function CM_Message(...)
	net.Start("ConnectionMsg")
	net.WriteTable({...})
	net.Broadcast()
end

hook.Add("PlayerInitialSpawn", "CM_Spawn", function(ply)
	timer.Simple(1, function() // wait until ply colour loads
		CM_Message(team.GetColor(ply:Team()), ply:Name(), Color(255, 255, 0), " завершает загрузку.")
	end )
end )

print("Connection Message Loaded")