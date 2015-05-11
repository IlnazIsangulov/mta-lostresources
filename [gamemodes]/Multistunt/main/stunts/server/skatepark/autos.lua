local car = {}


car[1] = createVehicle(522, 1865.1201171875, -1393.306640625, 13.065382957458, 359.24743652344, 0.087890625, 261.15600585938) -- NRG-500
car[2] = createVehicle(522, 1865.0849609375, -1394.7744140625, 13.061680793762, 359.88464355469, 0.0823974609375, 263.47961425781) -- NRG-500
car[3] = createVehicle(522, 1864.8544921875, -1396.6376953125, 13.057929992676, 359.52758789063, 0.0823974609375, 265.38024902344) -- NRG-500
car[4] = createVehicle(522, 1865.94921875, -1398.3427734375, 13.062685966492, 359.7802734375, 0.0604248046875, 266.38549804688) -- NRG-500
car[5] = createVehicle(522, 1865.3232421875, -1399.8291015625, 13.057353973389, 359.90112304688, 0.0494384765625, 267.89611816406) -- NRG-500
car[6] = createVehicle(522, 1865.1884765625, -1401.541015625, 13.056553840637, 0.2252197265625, 0.076904296875, 267.69287109375) -- NRG-500
car[7] = createVehicle(522, 1865.71875, -1403.03515625, 13.058813095093, 359.86267089844, 0.0439453125, 270.37902832031) -- NRG-500
car[8] = createVehicle(522, 1865.939453125, -1404.7109375, 13.054456710815, 359.53857421875, 0.0384521484375, 270.791015625) -- NRG-500
car[9] = createVehicle(468, 1864.98046875, -1407.5400390625, 13.150747299194, 0.516357421875, 359.94506835938, 269.90661621094) -- Sanchez
car[10] = createVehicle(468, 1864.7783203125, -1408.52734375, 13.150835037231, 0.6097412109375, 359.85168457031, 271.46118164063) -- Sanchez
car[11] = createVehicle(468, 1864.7255859375, -1409.9736328125, 13.165573120117, 0.76904296875, 359.73083496094, 268.2861328125) -- Sanchez
car[12] = createVehicle(468, 1864.7958984375, -1411.28515625, 13.164406776428, 0.758056640625, 359.62097167969, 273.80676269531) -- Sanchez
car[13] = createVehicle(468, 1863.8984375, -1412.5478515625, 13.158563613892, 0.81298828125, 359.71435546875, 271.64245605469) -- Sanchez
car[14] = createVehicle(468, 1863.826171875, -1413.8076171875, 13.164740562439, 0.94482421875, 359.71984863281, 273.69140625) -- Sanchez
car[15] = createVehicle(468, 1863.9609375, -1415.05859375, 13.172726631165, 1.0107421875, 359.76928710938, 270.36254882813) -- Sanchez
car[16] = createVehicle(468, 1863.900390625, -1416.3251953125, 13.174301147461, 1.3348388671875, 359.89562988281, 268.78601074219) -- Sanchez
car[17] = createVehicle(468, 1863.90625, -1417.7373046875, 13.177218437195, 1.593017578125, 359.83520507813, 273.19702148438) -- Sanchez
car[18] = createVehicle(471, 1897.8583984375, -1354.6689453125, 12.970852851868, 359.50561523438, 359.91760253906, 177.19299316406) -- Quadbike
car[19] = createVehicle(471, 1899.71484375, -1354.9658203125, 12.969913482666, 359.59350585938, 359.89013671875, 181.21948242188) -- Quadbike
car[20] = createVehicle(471, 1901.2392578125, -1355.4677734375, 12.971612930298, 359.39025878906, 359.93957519531, 181.79077148438) -- Quadbike
car[21] = createVehicle(471, 1904.16796875, -1355.57421875, 12.967751502991, 359.57702636719, 359.92309570313, 176.97875976563) -- Quadbike
car[22] = createVehicle(471, 1906.16796875, -1355.8076171875, 12.966529846191, 359.81872558594, 359.97253417969, 175.95153808594) -- Quadbike
car[23] = createVehicle(471, 1907.9892578125, -1356.1513671875, 12.986838340759, 359.53308105469, 0.9228515625, 181.17004394531) -- Quadbike
car[24] = createVehicle(471, 1909.7802734375, -1356.2880859375, 13.014693260193, 0.1593017578125, 0.977783203125, 183.69140625) -- Quadbike
car[25] = createVehicle(471, 1912.8681640625, -1357.431640625, 13.066540718079, 358.99475097656, 0.9942626953125, 158.08776855469) -- Quadbike

for v = 1, #car, 1 do
	setVehicleColor(car[v], math.random(200, 255), 0, 0, 0, 0, 0)
	setElementData(car[v], "mv.typ", "Freecar")
	setElementData(car[v], "mv.besitzer", "-")
	setElementData(car[v], "mv.stuntcar", "skatepark")
	toggleVehicleRespawn ( car[v], true )
	setVehicleRespawnDelay ( car[v], 5000 )
	setVehicleIdleRespawnDelay ( car[v], IdleCarRespawn*1000*60 )
	giveVehicleBetterEngine(car[v])
	giveVehiclePanzerung(car[v])
end