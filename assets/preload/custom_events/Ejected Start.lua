function onEvent(n,v1,v2)
	if n == 'Ejected Start' then
		cameraFlash('camGame', 'FFFFFF', 0.35)
		setProperty('camGame.visible', true)
		setProperty('camHUD.visible', true)
	end
end