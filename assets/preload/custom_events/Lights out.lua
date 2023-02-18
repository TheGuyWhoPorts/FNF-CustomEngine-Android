function onEvent(n,v1,v2)
	if n == 'Lights out' then
		cameraFlash('camGame', 'FFFFFF', 0.35)

		triggerEvent('Change Character', '0', 'whitebf')
		triggerEvent('Change Character', '1', 'whitegreen')

		makeLuaSprite('black', null, 0, 0)
		makeGraphic('black', 1280, 720, '000000')
		setProperty('black.scale.x', 3)
		setProperty('black.scale.y', 3)
		addLuaSprite('black', false)
		setProperty('black.alpha', 0)
		setProperty('black.alpha', 1)

		setProperty('gf.visible', false)
		setProperty('score.visible', false)
	end
end