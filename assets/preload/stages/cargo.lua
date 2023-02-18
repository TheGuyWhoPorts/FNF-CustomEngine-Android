local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 2000;
local yy = 1050;
local xx2 = 2300;
local yy2 = 1050;
local xx3 = 2000;
local yy3 = 1050;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

        makeLuaSprite('gris', 'timeBar/gris', 118.5, 22.5)
        setObjectCamera('gris', 'hud')
        scaleObject('gris', 1.185, .045)

        makeLuaSprite('negro', 'timeBar/negro', 115, 20)
        setObjectCamera('negro', 'hud')
        scaleObject('negro', 1.21, .065)

        makeLuaSprite('verde', 'timeBar/verde', 122, 24.25)
        setObjectCamera('verde', 'hud')
        scaleObject('verde', 1.165, .035)

        makeLuaSprite('verde-2', 'timeBar/verde-2', 122, 24.25)
        setObjectCamera('verde-2', 'hud')
        scaleObject('verde-2', 1.165, .035)

        addLuaSprite('negro', true)
        addLuaSprite('gris', true)
        addLuaSprite('verde-2', true)
        addLuaSprite('verde', true)
        addLuaText('songNameTxt', true)

        --illo?


	makeLuaSprite('BG0', 'Sus/cargo/cargo', 0, 0);
	scaleObject('BG0', 4, 4)

	makeLuaSprite('BG1', 'Sus/cargo/ccfdvdsvsd', 1400, 700);
        setProperty("BG1.scale.x", 3.0);
        setProperty("BG1.scale.y", 3.0);

	makeLuaSprite('bla', 'sus/bla', 1415, 705);
        setProperty("bla.scale.x", 3.0);
        setProperty("bla.scale.y", 3.0);
	doTweenAlpha('bla','bla',0, 1.5,'linear')

	makeLuaSprite('BG2', 'Sus/cargo/illojuan', 2200, 800);
        setProperty("BG2.scale.x", 1.3);
        setProperty("BG2.scale.y", 1.3);
	doTweenAlpha('BG2','BG2',0, 0.1,'linear')

	makeLuaSprite('bla2', 'sus/bla', 1415, 705);
        setProperty("bla2.scale.x", 3.0);
        setProperty("bla2.scale.y", 3.0);
	doTweenAlpha('bla2','bla2',0, 0.1,'linear')

	makeLuaSprite('BG3', 'Sus/defeat/iluminao omaga', 950, 400);
	doTweenAlpha('BG3','BG3',0, 0.1,'linear')

        addLuaSprite('BG3', true)
        addLuaSprite('BG0', false)
        addLuaSprite('BG1', true)
        addLuaSprite('bla', false)
        addLuaSprite('BG2', false)
        addLuaSprite('bla2', true)

end
function onCreatePost()

  makeLuaText('songNameTxt', songName, 0, 124, 19.3)
  setTextAlignment('songNameTxt', 'left')
  setTextSize('songNameTxt', 15)
  addLuaText('songNameTxt', true)

   --makeLuaTexts
  makeLuaText('Watermark', 'Port by Thepotra', 0, 4, getProperty('healthBarBG.y') + 58);

  
   --addLuaText
   addLuaText('Watermark')


   --Text fonts
   setTextFont('scoreTxt', 'PhantomMuff Full Letters 1.1.5.ttf')
   setTextFont('healthCounter', 'PhantomMuff Full Letters 1.1.5.ttf')
   setTextFont('timeTxt', 'PhantomMuff Full Letters 1.1.5.ttf')
   setTextFont('botplayTxt', 'PhantomMuff Full Letters 1.1.5.ttf')
   setTextFont('judgementCounter', 'PhantomMuff Full Letters 1.1.5.ttf')
   setTextFont('Watermark', 'PhantomMuff Full Letters 1.1.5.ttf');

   
   --Text sizes
   setTextSize('Watermark', 16);
   setTextSize('scoreTxt', 20);
   setTextSize('healthCounter', 20);
   setTextSize('timeTxt', 20);
   setTextSize('botplayTxt', 34);
   setTextSize('judgementCounter', 20);
   doTweenColor('scoreTxt', 'scoreTxt', 'd1d2f8', 0.5, 'linear');
   doTweenColor('Watermark', 'Watermark', 'd1d2f8', 0.5, 'linear');  

end
function onUpdate()
   setProperty('timeBarBG.visible', false)
   setProperty('timeBar.visible', false)
   setProperty('timeTxt.visible', false)
   scaleObject('verde', 1.168 * getProperty("songPercent"), .035)

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('mom.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('mom.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('mom.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('mom.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' or getProperty('mom.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' or getProperty('mom.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' or getProperty('mom.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' or getProperty('mom.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
        else

            setProperty('defaultCamZoom',0.8)
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
    
    if curBeat >= 356 and curBeat < 420 then
		setProperty('defaultCamZoom',1.1)
        xx2 = 2750;
        yy2 = 1150;  
	end
    if curBeat == 420 then
		setProperty('defaultCamZoom',0.8)
        xx2 = 2300;
        yy2 = 1050;  
	end
    if curBeat >= 552 and curBeat < 556 then
		setProperty('defaultCamZoom',1.2)
        xx = 1650;
        yy = 1180;  
        xx3 = 1650;
        yy3 = 1180;  
	end
    if curBeat == 556 then
        xx = 2000;
        yy = 1050;  
        xx3 = 2000;
        yy3 = 1050;  
	end
    if curBeat == 916 then
        doTweenZoom('defeated', 'camGame', 0.4, 20, 'linear')
    end

end
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'io' then
		doTweenAlpha('BG0','BG0',0, 3.5,'linear')
		doTweenAlpha('BG1','BG1',0, 3.5,'linear')
		doTweenAlpha('gf','gf',0, 3.5,'linear')
		doTweenAlpha('bla','bla',1, 3.5,'linear')
        	doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 3.5)
        	doTweenAlpha('AlphaTween2', 'healthBar', 0, 3.5)
        	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 3.5)
        	doTweenAlpha('AlphaTween4', 'iconP1', 0, 3.5)
        	doTweenAlpha('AlphaTween5', 'iconP2', 0, 3.5)
        	doTweenAlpha('AlphaTween6', 'timeBar', 0, 3.5)
        	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 3.5)
        	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 3.5)
		end

		if value1 == 'io-1' then
		doTweenAlpha('BG2','BG2',1, 50,'linear')

                end

		if value1 == 'io-2' then
		doTweenAlpha('BG0','BG0',1, 0.1,'linear')
		doTweenAlpha('BG1','BG1',1, 0.1,'linear')
		doTweenAlpha('BG2','BG2',0, 0.1,'linear')
		doTweenAlpha('gf','gf',1, 0.1,'linear')
		doTweenAlpha('bla','bla',0, 0.1,'linear')
        	doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.1)
        	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.1)
        	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.1)
        	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.1)
        	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.1)
        	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.1)
        	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.1)
        	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.1)

                end

		if value1 == 'io-3' then
		doTweenAlpha('BG0','BG0',0, 1.0,'linear')
		doTweenAlpha('BG1','BG1',0, 1.0,'linear')
		doTweenAlpha('BG2','BG2',0, 1.0,'linear')
		doTweenAlpha('dad','dad',0, 1.0,'linear')
		doTweenAlpha('bla2','bla2',1, 1.0,'linear')
		doTweenAlpha('BG3','BG3',1, 1.0,'linear')

                end

		if value1 == 'io-4' then
		doTweenAlpha('bla2','bla2',0, 1.0,'linear')

                end

		if value1 == 'io-5' then
		doTweenAlpha('bla2','bla2',1, 0.0001,'linear')

                end
	end
end

