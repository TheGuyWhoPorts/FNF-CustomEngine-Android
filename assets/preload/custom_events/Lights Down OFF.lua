function onEvent(n,v1,v2)
	if n == 'Lights Down OFF' then
		setProperty('camGame.visible', false)
	end
end