function onEvent(n,v1,v2)
	if n == 'HUD Fade' then
		if v1 == '0' then
			doTweenAlpha('hudFade', 'camHUD', 1, 0.7, 'quadInOut')
		elseif v1 == '1' then
			doTweenAlpha('hudFade', 'camHUD', 0, 0.7, 'quadInOut')
		end
	end
end