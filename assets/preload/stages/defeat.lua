
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0
local xx = 750;
local yy = 500;
local xx2 = 750;
local yy2 = 500;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

	makeLuaSprite('rojo', 'Sus/defeat/stageback', -550, -200);
	scaleObject('rojo', 2, 2)

	makeAnimatedLuaSprite('BG1', 'Sus/defeat/defeat', -350, -300);
	addAnimationByPrefix('BG1', 'idle', 'defeat', 24, false);
	scaleObject('BG1', 2, 2)
	addLuaSprite('BG1', false);

	makeLuaSprite('BG2', 'Sus/defeat/lol thing', -375, 120);
	scaleObject('BG2', 2, 2)


	makeLuaSprite('BG3', 'Sus/defeat/deadBG', -680, 400);
	scaleObject('BG3', 2, 2)


	makeLuaSprite('BG4', 'Sus/defeat/iluminao omaga', -450, -100);
	scaleObject('BG4', 2, 2)


	makeLuaSprite('BG5', 'Sus/defeat/deadFG', -650, 750);
	scaleObject('BG5', 2, 2)
        setLuaSpriteScrollFactor('BG5', 1.2, 1.2);



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






	addLuaSprite('rojo', false);
	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', false);
	addLuaSprite('BG4', true);	
	addLuaSprite('BG5', true);	
        addLuaSprite('negro', true)
        addLuaSprite('gris', true)
        addLuaSprite('verde-2', true)
        addLuaSprite('verde', true)
        addLuaText('songNameTxt', true)

	setProperty('rojo.visible', false);
	setProperty('BG2.visible', false);
	setProperty('BG3.visible', false);
	setProperty('BG5.visible', false);


end
function onCreatePost()

  makeLuaText('songNameTxt', songName, 0, 124, 19.3)
  setTextAlignment('songNameTxt', 'left')
  setTextSize('songNameTxt', 15)
  addLuaText('songNameTxt', true)

   setProperty('scoreTxt.visible', false)

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
   doTweenColor('scoreTxt', 'scoreTxt', 'FF0000', 1, 'linear');
   doTweenColor('Watermark', 'Watermark', 'FF0000', 1, 'linear');

end
function goodNoteHit(id, noteData, noteType, isSustainNote)

		setProperty('health', 0.01);


end
function onCountdownStarted()
	for i = 0, 3 do
		setPropertyFromGroup('opponentStrums', i, 'x', -900);
	end

	setPropertyFromGroup('playerStrums', 0, 'x', 413);
	setPropertyFromGroup('playerStrums', 1, 'x', 523);
	setPropertyFromGroup('playerStrums', 2, 'x', 633);
	setPropertyFromGroup('playerStrums', 3, 'x', 743);
       	 doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.25)
       	 doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.25)
       	 doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.25)
       	 doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.25)





end
function onBeatHit()
       if curBeat % 4== 0 then

       objectPlayAnimation('BG1', 'idle', true);

       end
end
function onUpdate()
   setProperty('timeBarBG.visible', false)
   setProperty('timeBar.visible', false)
   setProperty('timeTxt.visible', false)
   scaleObject('verde', 1.168 * getProperty("songPercent"), .035)
   setProperty('gf.alpha', 0);

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
    if curBeat == 16 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 32 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 48 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 68 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 100 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 500
        yy = 500
        xx2 = 900
        yy2 = 500
    end
    if curBeat == 164 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 194 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 196 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 212 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 228 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 244 then
        setProperty('defaultCamZoom',0.85)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 260 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 292 then
        setProperty('defaultCamZoom',0.75)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 360 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 500
        yy = 500
        xx2 = 900
        yy2 = 500
    end
    if curBeat == 424 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 456 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 472 then
        setProperty('defaultCamZoom',0.9)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 488 then
        setProperty('defaultCamZoom',50)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    
end
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'old' then
			setProperty('BG1.visible', false);
			setProperty('BG2.visible', false);
			setProperty('BG3.visible', false);
			setProperty('BG4.visible', false);
			setProperty('BG5.visible', false);
			setProperty('rojo.visible', true);

		end

		if value1 == 'new' then
			setProperty('BG1.visible', true);
			setProperty('BG2.visible', true);
			setProperty('BG3.visible', true);
			setProperty('BG4.visible', true);
			setProperty('BG5.visible', true);
			setProperty('rojo.visible', false);

		end

		if value1 == 'go pico' then
			setProperty('BG2.visible', true);
			setProperty('BG3.visible', true);
			setProperty('BG5.visible', true);

               end
	end
end
