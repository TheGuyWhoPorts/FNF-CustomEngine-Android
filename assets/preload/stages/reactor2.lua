
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 1725;
local yy = 1100;
local xx2 = 1725;
local yy2 = 1100;
local ofs = 10;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	makeLuaSprite('bg0', 'impostor/reactor/wallbgthing', 0, 0)
	scaleObject('bg0', 2, 2)
    setProperty('bg0.antialiasing', true)
	setScrollFactor('bg0', 1, 1)
	addLuaSprite('bg0', false)

	makeLuaSprite('bg', 'impostor/reactor/floornew', 0, 0)
	scaleObject('bg', 2, 2)
    setProperty('bg.antialiasing', true)
	setScrollFactor('bg', 1, 1)
	addLuaSprite('bg', false)

	makeAnimatedLuaSprite('toogusorange', 'impostor/reactor/yellowcoti', 875, 915)
	scaleObject('toogusorange', 2, 2)
    addAnimationByPrefix('toogusorange', 'bop', 'Pillars with crewmates instance 1', 24, false)
	objectPlayAnimation('toogusorange', 'bop', false)
	setScrollFactor('toogusorange', 1, 1)
	setProperty('toogusorange.antialiasing', true)
	addLuaSprite('toogusorange', false)

	makeLuaSprite('bg2', 'impostor/reactor/backbars', 0, 0)
	setProperty('bg2.antialiasing', true)
	scaleObject('bg2', 2, 2)
	setScrollFactor('bg2', 1, 1)
	addLuaSprite('bg2', false)

	makeAnimatedLuaSprite('toogusblue', 'impostor/reactor/browngeoff', 450, 995)
	scaleObject('toogusblue', 2, 2)
	addAnimationByPrefix('toogusblue', 'bop', 'Pillars with crewmates instance 1', 24, false)
	objectPlayAnimation('toogusblue', 'bop', false)
	setScrollFactor('toogusblue', 1, 1)
	setProperty('toogusblue.antialiasing', true)
	addLuaSprite('toogusblue', false)

	makeLuaSprite('bg3', 'impostor/reactor/frontpillars', 0, 0)
	scaleObject('bg3', 2, 2)
	setProperty('bg3.antialiasing', true)
	setScrollFactor('bg3', 1, 1)
	addLuaSprite('bg3', false)

	makeAnimatedLuaSprite('tooguswhite', 'impostor/reactor/ball lol', 1200, 100)
	scaleObject('tooguswhite', 2, 2)
    addAnimationByPrefix('tooguswhite', 'bop', 'core instance 1', 24, false)
	objectPlayAnimation('tooguswhite', 'bop', false)
	setScrollFactor('tooguswhite', 1, 1)
	setProperty('tooguswhite.antialiasing', true)
	addLuaSprite('tooguswhite', false)

	makeLuaSprite('lightoverlay', 'impostor/reactor/frontblack', 0, 0)
	scaleObject('lightoverlay', 2, 2)
    setProperty('lightoverlay.antialiasing', true)
	setScrollFactor('lightoverlay', 1, 1)
	addLuaSprite('lightoverlay', false)

	makeAnimatedLuaSprite('mainoverlay', 'impostor/reactor/yeahman', 750, 100)
	scaleObject('mainoverlay', 2, 2)
    addAnimationByPrefix('mainoverlay', 'bop', 'Reactor Overlay Top instance 1', 24, true)
	objectPlayAnimation('mainoverlay', 'bop', false)
	setScrollFactor('mainoverlay', 1, 1)
	addLuaSprite('mainoverlay', false)
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
    if curBeat == 64 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1450
        yy = 1150
        xx2 = 1950
        yy2 = 1150
    end
    if curBeat == 128 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 1725
        yy = 1100
        xx2 = 1725
        yy2 = 1100
    end
    if curBeat == 192 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1450
        yy = 1150
        xx2 = 1950
        yy2 = 1150
    end
    if curBeat == 224 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1725
        yy = 1100
        xx2 = 1725
        yy2 = 1100
    end
    if curBeat == 256 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1450
        yy = 1150
        xx2 = 1950
        yy2 = 1150
    end
    if curBeat == 320 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 1725
        yy = 1100
        xx2 = 1725
        yy2 = 1100
    end
    if curBeat == 384 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1450
        yy = 1150
        xx2 = 1950
        yy2 = 1150
    end
    if curBeat == 479 then
        setProperty('defaultCamZoom',0.9)
		followchars = true
        xx = 1725
        yy = 1200
        xx2 = 1725
        yy2 = 1200
    end
    if curBeat == 544 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 1725
        yy = 1100
        xx2 = 1725
        yy2 = 1100
    end
    if curBeat == 608 then
        setProperty('defaultCamZoom',0.9)
		followchars = true
        xx = 1725
        yy = 1200
        xx2 = 1725
        yy2 = 1200
    end
    if curBeat == 672 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 1725
        yy = 1100
        xx2 = 1725
        yy2 = 1100
    end
end

function onBeatHit()
	if curBeat % 4 == 0 then
		objectPlayAnimation('toogusorange', 'bop', true)
		objectPlayAnimation('toogusblue', 'bop', true)
		objectPlayAnimation('tooguswhite', 'bop', true)
	end
end