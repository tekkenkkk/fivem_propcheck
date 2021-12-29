RegisterNetEvent('esx_propcheck')
AddEventHandler('esx_propcheck', function()
	DropPlayer(source, 'Posiadasz usunięte propy | Napraw to i wchodź na serwer')
end)