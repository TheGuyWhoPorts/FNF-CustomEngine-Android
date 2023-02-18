local SpeedBuilds = -10000
local WaitBuildB = false
local SpawnBuilds = true
local LinesCloudSpawn = true
local lastStep = 0

local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  275;
local yy =  550;
local xx2 = 275;
local yy2 = 550;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	makeLuaSprite('sky', 'impostor/ejected/sky', -2372.25, -4181.7)
	scaleObject('sky', 4, 4)
    setProperty('sky.antialiasing', true)
	setScrollFactor('sky', 0, 0)
	addLuaSprite('sky', false)

	makeLuaSprite('fgClouds', 'impostor/ejected/fgClouds', -2660.4, -402)
	scaleObject('fgClouds', 4, 4)
    setProperty('fgClouds.antialiasing', true)
	setScrollFactor('fgClouds', 0.2, 0.2)
	addLuaSprite('fgClouds', false)

	Int={A=1,B=1,Lines=1}
end

function onCreatePost()
	precacheImage('impostor/ejected/')
end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end

	setProperty('camHUD.y', (math.sin(((getSongPosition() / 1000) / 1.0)) * 15))
	setProperty('camHUD.angle', (math.sin(((getSongPosition() / 1200) * math.pi)) * -1.0 * 1.2))

    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.45)
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

            setProperty('defaultCamZoom',0.45)
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

	if SpawnBuilds then
		if not luaSpriteExists('buildingA'..Int['A']) then
			makeAnimatedLuaSprite('buildingA'..Int['A'], 'impostor/ejected/buildingSheet', -274, 1700)
			addAnimationByPrefix('buildingA'..Int['A'], 'idle', 'BuildingA'..getRandomInt(1,3), 0, true)
			setProperty('buildingA'..Int['A']..'.velocity.y', SpeedBuilds)
			scaleObject('buildingA'..Int['A'], 4, 4)
			addLuaSprite('buildingA'..Int['A'])
		elseif getProperty('buildingA'..Int['A']..'.y')< -6700 and luaSpriteExists('buildingA'..Int['A']) then
			removeLuaSprite('buildingA'..Int['A']-1)
			Int['A']=Int['A']+1
			WaitBuildB = true
		end

		if not luaSpriteExists('buildingB'..Int['B']) then
			makeAnimatedLuaSprite('buildingB'..Int['B'], 'impostor/ejected/buildingSheet', 974, getProperty('buildingA'..Int['A']..'.y')+6000)
			addAnimationByPrefix('buildingB'..Int['B'], 'idle', 'BuildingB'..getRandomInt(1,2), 0, true)
			setProperty('buildingB'..Int['B']..'.velocity.y', SpeedBuilds)
			scaleObject('buildingB'..Int['B'], 4, 4)
			addLuaSprite('buildingB'..Int['B'])
			setObjectOrder('buildingB'..Int['B'], getObjectOrder('buildingA'..Int['A'])+getRandomInt(-1,1,'0'))

			makeAnimatedLuaSprite('buildingB1'..Int['B'], 'impostor/ejected/buildingSheet', -1220, getProperty('buildingA'..Int['A']..'.y')+6000)
            addAnimationByPrefix('buildingB1'..Int['B'], 'idle', 'BuildingB'..getRandomInt(1,2), 0, true)
			setProperty('buildingB1'..Int['B']..'.velocity.y', SpeedBuilds)
			scaleObject('buildingB1'..Int['B'], 4, 4)
			addLuaSprite('buildingB1'..Int['B'])
			setObjectOrder('buildingB1'..Int['B'], getObjectOrder('buildingA'..Int['A'])+getRandomInt(-1,1,'0'))
		elseif getProperty('buildingA'..Int['A']..'.y')< -2000 then
			if WaitBuildB then
				removeLuaSprite('buildingB1'..Int['B']-1)
				removeLuaSprite('buildingB'..Int['B']-1)
				Int['B']=Int['B']+1
			end
		end
	end


	if LinesCloudSpawn then
		if not luaSpriteExists('Lines'..Int['Lines']) then
			makeLuaSprite('Lines'..Int['Lines'], 'impostor/ejected/speedLines', -875, 0)
			scaleObject('Lines', 2, 2)
            setProperty('Lines'..Int['Lines']..'.velocity.y', SpeedBuilds)
			setPropery('Lines'..Int['Lines']..'.alpha', 0.5)
			addLuaSprite('Lines'..Int['Lines'], true)
		elseif getProperty('Lines'..Int['Lines']..'.y')< -550 and luaSpriteExists('Lines'..Int['Lines']) then
			removeLuaSprite('Lines'..Int['Lines']-1)
			Int['Lines']=Int['Lines']+1
		end

		if curStep ~= lastStep and curStep % 2 == 0 then
			removeLuaSprite('Clouds'..curStep-6, true)
			makeAnimatedLuaSprite('Clouds'..curStep, 'impostor/ejected/scrollingClouds', -250+(getRandomInt(-1,1)*800), 1050)
			scaleObject('Clouds', 2, 2)
            addAnimationByPrefix('Clouds'..curStep, 'idle', 'Cloud'..getRandomInt(0,3), 0, true)
			setProperty('Clouds'..curStep..'.velocity.y', SpeedBuilds)
			addLuaSprite('Clouds'..curStep, true)
			lastStep = curStep
		end
	end
end