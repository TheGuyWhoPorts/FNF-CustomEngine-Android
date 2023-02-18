function onEvent(n,v1,v2)
	if n == 'Lights on Ending' then
		triggerEvent('Change Character', '0', 'bf')
		triggerEvent('Change Character', '1', 'impostor3')

		setProperty('black.alpha', 0)

		setProperty('boyfriend.visible', false)
		setProperty('gf.visible', false)
		setProperty('camHUD.visible', false)

		triggerEvent('Play Animation', 'liveReaction', 'dad')
		objectPlayAnimation('bfvent', 'vent', false)
		setProperty('bfvent.alpha', 1)
		objectPlayAnimation('ldSpeaker', 'boom', false)
		setProperty('ldSpeaker.visible', true)
	end
end