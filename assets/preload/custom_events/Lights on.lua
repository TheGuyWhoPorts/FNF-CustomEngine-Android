function onEvent(n,v1,v2)
	if n == 'Lights on' then
		cameraFlash('camGame', '000000', 0.35)

		triggerEvent('Change Character', '0', 'bf')
		triggerEvent('Change Character', '1', 'impostor3')

		setProperty('black.alpha', 0)

		setProperty('gf.visible', true)
		setProperty('score.visible', true)
	end
end