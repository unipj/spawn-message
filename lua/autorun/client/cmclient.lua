if(!CLIENT) then return end

AddCSLuaFile()

net.Receive("ConnectionMsg", function(len)
	local CM_Data = net.ReadTable()
	chat.AddText(Color(255, 255, 0), "[Информация] ", unpack(CM_Data))
end )