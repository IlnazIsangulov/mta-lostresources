local car = {}car[1] = createVehicle(411,-61.42650000,1145.53540000,519.34660000,1.73120000,1,1) -- {id]car[2] = createVehicle(411,-64.54520000,1145.27250000,529.89110000,0.75370000,1,1) -- {id]car[3] = createVehicle(411,-67.08500000,1145.23910000,529.89110000,0.75370000,1,1) -- {id]car[4] = createVehicle(411,-71.23680000,1145.18420000,529.89110000,0.75370000,1,1) -- {id]car[5] = createVehicle(411,-74.09160000,1145.14650000,529.89110000,0.75370000,1,1) -- {id]car[6] = createVehicle(411,-77.26500000,1145.10460000,529.89110000,0.75370000,1,1) -- {id]car[7] = createVehicle(411,-80.53300000,1145.55620000,532.14060000,358.63480000,1,1) -- {id]car[8] = createVehicle(411,-83.16850000,1145.61900000,532.14040000,358.63480000,1,1) -- {id]car[9] = createVehicle(411,-82.81970000,1156.37080000,528.58020000,269.85330000,1,1) -- {id]car[10] = createVehicle(411,-82.81070000,1159.88610000,528.58010000,269.85330000,1,1) -- {id]car[11] = createVehicle(411,-82.80070000,1163.81760000,528.57980000,269.85330000,1,1) -- {id]car[12] = createVehicle(411,-95.02950000,1163.84900000,528.58000000,269.85330000,1,1) -- {id]car[13] = createVehicle(411,-95.04000000,1159.74870000,528.58050000,269.85330000,1,1) -- {id]car[14] = createVehicle(411,-95.04820000,1156.55110000,528.58070000,269.85330000,1,1) -- {id]car[15] = createVehicle(411,-127.40590000,1157.99290000,522.30610000,269.38760000,1,1) -- {id]car[16] = createVehicle(411,-127.37820000,1160.57910000,522.30270000,269.38760000,1,1) -- {id]car[17] = createVehicle(411,-127.35240000,1162.99680000,522.29940000,269.38760000,1,1) -- {id]for v = 1, #car, 1 do	setVehicleColor(car[v], 255, 255, 0, 0, 0, 0)	setElementData(car[v], "mv.typ", "Freecar")	setElementData(car[v], "mv.besitzer", "-")	setElementData(car[v], "mv.stuntcar", "drollercoaster")	toggleVehicleRespawn ( car[v], true )	setVehicleRespawnDelay ( car[v], 5000 )	setVehicleIdleRespawnDelay ( car[v], IdleCarRespawn*1000*60 )	giveVehicleBetterEngine(car[v])	giveVehiclePanzerung(car[v])end