local interior = 5-- Andere Scheisse --local Knopf1, Knopf2, Label, Rotationtimerlocal Guivar = 0local Curskin = 0function clothes_next_skin()	setPedRotation(gMe, 90)	if(clothes_skins[Curskin] ~= nil) then		Curskin = Curskin+1			guiSetText(Label, "Skin: "..gettok(clothes_skins[Curskin], 2, ","))		setElementModel(gMe, gettok(clothes_skins[Curskin], 1, ","))		--outputChatBox(Curskin)			end	if(Curskin > #clothes_skins-1) then		Curskin = 1	endendfunction clothes_back_skin()	setPedRotation(gMe, 90)	if(clothes_skins[Curskin] ~= nil) then		Curskin = Curskin-1				guiSetText(Label, "Skin: "..gettok(clothes_skins[Curskin], 2, ","))		setElementModel(gMe, gettok(clothes_skins[Curskin], 1, ","))		--outputChatBox(Curskin)	end	if(Curskin < 2) then		Curskin = #clothes_skins	endendaddEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()),function()	Knopf1 = guiCreateButton(0.4375,0.8574,0.0557,0.038,"|<<<|",true)	Knopf2 = guiCreateButton(0.4958,0.8574,0.0557,0.038,"|>>>|",true)	Label = guiCreateLabel(0.4359,0.8056,0.1161,0.05,"Skin: Your Skin",true)	guiLabelSetColor(Label,0, 255, 255)	guiLabelSetVerticalAlign(Label,"center")	guiLabelSetHorizontalAlign(Label,"center",false)	guiSetFont(Label,"default-bold-small")	guiSetVisible(Knopf1, false)	guiSetVisible(Knopf2, false)	guiSetVisible(Label, false)		addEventHandler("onClientGUIClick", Knopf1, clothes_back_skin)	addEventHandler("onClientGUIClick", Knopf2, clothes_next_skin)end)addEventHandler("onClientRender", getRootElement(), function() if(Guivar == 1) then showCursor(true) end end)local Tante = createPed(141, 204.85377502441, -8.1369285583496, 1001.2109375)setPedRotation(Tante, 180)setElementDimension(Tante, 1)setElementInterior(Tante, interior)setElementFrozen(Tante, true)addEventHandler("onClientPedDamage", Tante, cancelEvent)local Marker = createMarker(206.91796875, -5.2704458236694, 1000, "cylinder", 1.0, 0, 0, 200, 200)setElementInterior(Marker, interior)setElementDimension(Marker, 1)addEventHandler("onClientMarkerHit", Marker,function(hitElement)	if(hitElement ~= gMe) then return end	if(getElementData(gMe, "atClothes") == true) then return end	triggerServerEvent("onClothesShopStart", gMe)end)function skin_abbrechen_func()	killTimer(Rotationtimer)	setCameraTarget(gMe, gMe)	triggerServerEvent("onClothesShopAbbrechen", gMe)	unbindKey("enter", "down", skin_kaufen_func)	unbindKey("space", "down", skin_abbrechen_func)	guiSetVisible(Label, false)	guiSetVisible(Knopf1, false)	guiSetVisible(Knopf2, false)	Guivar = 0	showCursor(false)	setElementModel(gMe, tonumber(getElementData(gMe, "ms.skin")))endfunction skin_kaufen_func()	triggerServerEvent("onClothesShopBuy", gMe, getElementModel(gMe))	unbindKey("enter", "down", skin_kaufen_func)	unbindKey("space", "down", skin_abbrechen_func)	guiSetVisible(Label, false)	guiSetVisible(Knopf1, false)	guiSetVisible(Knopf2, false)	Guivar = 0	showCursor(false)	killTimer(Rotationtimer)	setCameraTarget(gMe, gMe)	outputChatBox("Du hast den Skin '"..gettok(clothes_skins[Curskin], 2, ",").."' ausgewaehlt!", 0, 200, 0)endaddEvent("onClothesShopStartBack", true)addEventHandler("onClothesShopStartBack", getRootElement(),function()	if(Rotationtimer) then killTimer(Rotationtimer) end	local x, y, z = getElementPosition(gMe)	setCameraMatrix(210.11378479004, -7.7465643882751, 1001.2109375, x, y, z)	Rotationtimer = setTimer(function()		local rot = getPedRotation(gMe)		setPedRotation(gMe, rot+1)	end, 50, 0)	outputChatBox("Press return for choosing the skin, space to cancel.", 0, 255, 255)	bindKey("enter", "down", skin_kaufen_func)	bindKey("space", "down", skin_abbrechen_func)	guiSetVisible(Label, true)	guiSetVisible(Knopf1, true)	guiSetVisible(Knopf2, true)	Guivar = 1	Curskin = 1	clothes_next_skin()end)-- Skin --