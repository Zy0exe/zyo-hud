ZyoCore= nil

TriggerEvent('ZyoCore:GetObject', function(obj) ZyoCore= obj end)

--ZyoCore.Commands.Add("cash", "Kijk hoeveel geld je bij je hebt", {}, false, function(source, args)
--	TriggerClientEvent('hud:client:ShowMoney', source, "cash")
--end)

ZyoCore.Commands.Add("banco", "Ver dinheiro que tens no banco", {}, false, function(source, args)
	TriggerClientEvent('hud:client:ShowMoney', source, "bank")
end)

ZyoCore.Functions.CreateUseableItem("wallet", function(source, item)
	local Player = ZyoCore.Functions.GetPlayer(source)
	TriggerClientEvent('hud:client:ShowMoney', source, "cash")
end)