addEvent("onPlayerPay", true)
addEventHandler("onPlayerPay", getRootElement(), function(player, data, anzahl, itemname)
	removePlayerItem(source, data, tonumber(anzahl))
	givePlayerItem(player, data, tonumber(anzahl))
	outputChatBox("You sucessfull gave "..anzahl.." "..itemname.." to "..getPlayerName(player).." !", source, 0, 255, 0)
	outputChatBox("You got "..anzahl.." "..itemname.." from "..getPlayerName(player).." !", player, 0, 255, 0)
end)