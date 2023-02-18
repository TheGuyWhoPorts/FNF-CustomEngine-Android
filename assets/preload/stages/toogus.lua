local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  500;
local yy =  475;
local xx2 = 900;
local yy2 = 475;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	precacheImage('characters/whitebf');
	precacheImage('characters/whitegreen');

	makeLuaSprite('bg', 'mirabg', -1600, 50)
	scaleObject('bg', 2.1, 2.1)
	setProperty('bg.antialiasing', true)
	setScrollFactor('bg', 1, 1)
	addLuaSprite('bg', false)

	makeLuaSprite('fg', 'mirafg', -1600, 50)
	scaleObject('fg', 2.1, 2.1)
	setProperty('fg.antialiasing', true)
	setScrollFactor('fg', 1, 1)
	addLuaSprite('fg', false)

		makeAnimatedLuaSprite('bfvent', 'impostor/mira/bf_mira_vent', 70, 200)
		scaleObject('bfvent', 2, 2)
        addAnimationByPrefix('bfvent', 'vent', 'bf vent', 24, false)
		objectPlayAnimation('bfvent', 'vent', false)
		setScrollFactor('bfvent', 1, 1)
		setProperty('bfvent.antialiasing', true)
		setProperty('bfvent.alpha', 0.001)
		addLuaSprite('bfvent', false)

	makeLuaSprite('tbl', 'table_bg', -1600, 50)
	scaleObject('tbl', 2.1, 2.1)
	setProperty('tbl.antialiasing', true)
	setScrollFactor('tbl', 1, 1)
	addLuaSprite('tbl', false)

		makeAnimatedLuaSprite('ldSpeaker', 'impostor/mira/stereo_taken', 400, 420)
		scaleObject('ldSpeaker', 2, 2)
        addAnimationByPrefix('ldSpeaker', 'boom', 'stereo boom', 24, false)
		setScrollFactor('ldSpeaker', 1, 1)
		setProperty('ldSpeaker.antialiasing', true)
		setProperty('ldSpeaker.visible', false)
		addLuaSprite('ldSpeaker', false)

	if songName == 'Sussus Toogus' then
	makeAnimatedLuaSprite('saxguy', 'impostor/mira/cyan_toogus', 0, 0)
	addAnimationByPrefix('saxguy', 'bop', 'Cyan Dancy', 24, true)
	setScrollFactor('saxguy', 1, 1)
	scaleObject('saxguy', 4, 4)
	addLuaSprite('saxguy', true)
	setProperty('saxguy.alpha', 0.001)
	end
end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.9)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',0.9)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end

function onStepHit()
	if curStep == 901 then
		doTweenX('saxwalk', 'saxguy', 1400, 16)
		objectPlayAnimation('saxguy', 'bop', true)
	end

	if curStep == 1030 then
		setProperty('saxguy.alpha', 0.001)
	end
end