
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 500;
local yy = 600;
local xx2 = 700;
local yy2 = 700;
local ofs = 100;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

        setProperty('defaultCamZoom',0.4)
        makeLuaSprite('bartop','',0,-30)
        makeGraphic('bartop',1280,100,'000000')
        addLuaSprite('bartop',true)
        setObjectCamera('bartop','hud')
        setScrollFactor('bartop',0,0)

        makeLuaSprite('barbot','',0,650)
        makeGraphic('barbot',1280,100,'000000')
        addLuaSprite('barbot',true)
        setScrollFactor('barbot',0,0)
        setObjectCamera('barbot','hud')

        makeLuaSprite('bar', 'Sus/FINALE/healthBarFinaleRed', 200, -80)
        setObjectCamera('bar', 'hud')
        scaleObject('bar', 0.65, 0.65)
        setProperty('bar.flipY', true)

        makeLuaSprite('Blue1', 'Sus/FINALE/healthBarFinaleBlue1', 200, -80)
        setObjectCamera('Blue1', 'hud')
        scaleObject('Blue1', 0.65, 0.65)
        setProperty('Blue1.flipY', true)

        makeLuaSprite('Blue2', 'Sus/FINALE/healthBarFinaleBlue2', 200, -80)
        setObjectCamera('Blue2', 'hud')
        scaleObject('Blue2', 0.65, 0.65)
        setProperty('Blue2.flipY', true)

        makeLuaSprite('Blue3', 'Sus/FINALE/healthBarFinaleBlue3', 200, -80)
        setObjectCamera('Blue3', 'hud')
        scaleObject('Blue3', 0.65, 0.65)
        setProperty('Blue3.flipY', true)

        makeLuaSprite('Blue4', 'Sus/FINALE/healthBarFinaleBlue4', 200, -80)
        setObjectCamera('Blue4', 'hud')
        scaleObject('Blue4', 0.65, 0.65)
        setProperty('Blue4.flipY', true)

        makeLuaSprite('Blue5', 'Sus/FINALE/healthBarFinaleBlue5', 200, -80)
        setObjectCamera('Blue5', 'hud')
        scaleObject('Blue5', 0.65, 0.65)
        setProperty('Blue5.flipY', true)

        makeLuaSprite('Blue6', 'Sus/FINALE/healthBarFinaleBlue6', 200, -80)
        setObjectCamera('Blue6', 'hud')
        scaleObject('Blue6', 0.65, 0.65)
        setProperty('Blue6.flipY', true)

        makeLuaSprite('Blue7', 'Sus/FINALE/healthBarFinaleBlue7', 200, -80)
        setObjectCamera('Blue7', 'hud')
        scaleObject('Blue7', 0.65, 0.65)
        setProperty('Blue7.flipY', true)

        makeLuaSprite('Blue8', 'Sus/FINALE/healthBarFinaleBlue8', 200, -80)
        setObjectCamera('Blue8', 'hud')
        scaleObject('Blue8', 0.65, 0.65)
        setProperty('Blue8.flipY', true)

        makeLuaSprite('Blue9', 'Sus/FINALE/healthBarFinaleBlue9', 200, -80)
        setObjectCamera('Blue9', 'hud')
        scaleObject('Blue9', 0.65, 0.65)
        setProperty('Blue9.flipY', true)

        makeLuaSprite('Blue10', 'Sus/FINALE/healthBarFinaleBlue10', 200, -80)
        setObjectCamera('Blue10', 'hud')
        scaleObject('Blue10', 0.65, 0.65)
        setProperty('Blue10.flipY', true)

        makeLuaSprite('Blue11', 'Sus/FINALE/healthBarFinaleBlue11', 200, -80)
        setObjectCamera('Blue11', 'hud')
        scaleObject('Blue11', 0.65, 0.65)
        setProperty('Blue11.flipY', true)

        makeLuaSprite('Blue12', 'Sus/FINALE/healthBarFinaleBlue12', 200, -80)
        setObjectCamera('Blue12', 'hud')
        scaleObject('Blue12', 0.65, 0.65)
        setProperty('Blue12.flipY', true)

        makeLuaSprite('Blue13', 'Sus/FINALE/healthBarFinaleBlue13', 200, -80)
        setObjectCamera('Blue13', 'hud')
        scaleObject('Blue13', 0.65, 0.65)
        setProperty('Blue13.flipY', true)

        makeLuaSprite('Blue14', 'Sus/FINALE/healthBarFinaleBlue14', 200, -80)
        setObjectCamera('Blue14', 'hud')
        scaleObject('Blue14', 0.65, 0.65)
        setProperty('Blue14.flipY', true)

        makeLuaSprite('Blue15', 'Sus/FINALE/healthBarFinaleBlue15', 200, -80)
        setObjectCamera('Blue15', 'hud')
        scaleObject('Blue15', 0.65, 0.65)
        setProperty('Blue15.flipY', true)

        makeLuaSprite('Blue16', 'Sus/FINALE/healthBarFinaleBlue16', 200, -80)
        setObjectCamera('Blue16', 'hud')
        scaleObject('Blue16', 0.65, 0.65)
        setProperty('Blue16.flipY', true)

        makeLuaSprite('Blue17', 'Sus/FINALE/healthBarFinaleBlue17', 200, -80)
        setObjectCamera('Blue17', 'hud')
        scaleObject('Blue17', 0.65, 0.65)
        setProperty('Blue17.flipY', true)

        makeLuaSprite('Blue18', 'Sus/FINALE/healthBarFinaleBlue18', 200, -80)
        setObjectCamera('Blue18', 'hud')
        scaleObject('Blue18', 0.65, 0.65)
        setProperty('Blue18.flipY', true)

        makeLuaSprite('Blue19', 'Sus/FINALE/healthBarFinaleBlue19', 200, -80)
        setObjectCamera('Blue19', 'hud')
        scaleObject('Blue19', 0.65, 0.65)
        setProperty('Blue19.flipY', true)

        makeLuaSprite('Blue20', 'Sus/FINALE/healthBarFinaleBlue20', 200, -80)
        setObjectCamera('Blue20', 'hud')
        scaleObject('Blue20', 0.65, 0.65)
        setProperty('Blue20.flipY', true)




        makeLuaSprite('icon-bf', 'Sus/FINALE/icon-bf', 900, 10)
        scaleObject('icon-bf', 2, 2);
        setObjectCamera('icon-bf', 'hud')
        setProperty('icon-bf.flipX', true)

	makeAnimatedLuaSprite('icon-b', 'Sus/FINALE/icon-blackFinale', 110, -90)
	addAnimationByPrefix('icon-b', 'idle', 'black icon mad', 24, true);
        objectPlayAnimation('icon-b', 'idle', true);
        setObjectCamera('icon-b', 'hud')
        scaleObject('icon-b', 1.50, 1.50)


        addLuaSprite('bar', true)
        addLuaSprite('Blue1', true)
        addLuaSprite('Blue2', true)
        addLuaSprite('Blue3', true)
        addLuaSprite('Blue4', true)
        addLuaSprite('Blue5', true)
        addLuaSprite('Blue6', true)
        addLuaSprite('Blue7', true)
        addLuaSprite('Blue8', true)
        addLuaSprite('Blue9', true)
        addLuaSprite('Blue10', true)
        addLuaSprite('Blue11', true)
        addLuaSprite('Blue12', true)
        addLuaSprite('Blue13', true)
        addLuaSprite('Blue14', true)
        addLuaSprite('Blue15', true)
        addLuaSprite('Blue16', true)
        addLuaSprite('Blue17', true)
        addLuaSprite('Blue18', true)
        addLuaSprite('Blue19', true)
        addLuaSprite('Blue20', true)

        addLuaSprite('icon-bf', true)
        addLuaSprite('icon-b', true)

        setProperty('Blue1.visible', false)
        setProperty('Blue2.visible', false)
        setProperty('Blue3.visible', false)
        setProperty('Blue4.visible', false)
        setProperty('Blue5.visible', false)
        setProperty('Blue6.visible', false)
        setProperty('Blue7.visible', false)
        setProperty('Blue8.visible', false)
        setProperty('Blue9.visible', false)
        setProperty('Blue10.visible', false)
        setProperty('Blue11.visible', false)
        setProperty('Blue12.visible', false)
        setProperty('Blue13.visible', false)
        setProperty('Blue14.visible', false)
        setProperty('Blue15.visible', false)
        setProperty('Blue16.visible', false)
        setProperty('Blue17.visible', false)
        setProperty('Blue18.visible', false)
        setProperty('Blue19.visible', false)
        setProperty('Blue20.visible', false)

	doTweenAlpha('Blue20','Blue20',0, 0.1,'linear')
	doTweenAlpha('Blue19','Blue19',0, 0.1,'linear')
	doTweenAlpha('Blue18','Blue18',0, 0.1,'linear')
	doTweenAlpha('Blue17','Blue17',0, 0.1,'linear')
	doTweenAlpha('Blue16','Blue16',0, 0.1,'linear')
	doTweenAlpha('Blue15','Blue15',0, 0.1,'linear')
	doTweenAlpha('Blue14','Blue14',0, 0.1,'linear')
	doTweenAlpha('Blue13','Blue13',0, 0.1,'linear')
	doTweenAlpha('Blue12','Blue12',0, 0.1,'linear')
	doTweenAlpha('Blue11','Blue11',0, 0.1,'linear')
	doTweenAlpha('Blue10','Blue10',0, 0.1,'linear')
	doTweenAlpha('Blue9','Blue9',0, 0.1,'linear')
	doTweenAlpha('Blue8','Blue8',0, 0.1,'linear')
	doTweenAlpha('Blue7','Blue7',0, 0.1,'linear')
	doTweenAlpha('Blue6','Blue6',0, 0.1,'linear')
	doTweenAlpha('Blue5','Blue5',0, 0.1,'linear')
	doTweenAlpha('Blue4','Blue4',0, 0.1,'linear')
	doTweenAlpha('Blue3','Blue3',0, 0.1,'linear')
	doTweenAlpha('Blue2','Blue2',0, 0.1,'linear')
	doTweenAlpha('Blue1','Blue1',0, 0.1,'linear')
	doTweenAlpha('icon-bf','icon-bf',0, 0.1,'linear')
	doTweenAlpha('icon-b','icon-b',0, 0.1,'linear')
	doTweenAlpha('bar','bar',0, 0.1,'linear')

        --illo?

	makeLuaSprite('BG0', 'Sus/defeat/iluminao omaga', -475, 200);

	makeLuaSprite('BG1', 'Sus/FINALE/bgg', -800, -400)
	scaleObject('BG1', 2, 2);

	makeLuaSprite('BG2', 'Sus/FINALE/bg', -800, -520)
	setProperty("BG2.scale.y", 1.2);
    setProperty("BG2.scale.x", 1.2);
        
	makeLuaSprite('BG3', 'Sus/FINALE/dead', 800, -270)
	scaleObject('BG3', 2, 2);

	makeLuaSprite('BG4', 'Sus/FINALE/lamp', 1100, -280)
	scaleObject('BG4', 2, 2);

	makeAnimatedLuaSprite('BG5', 'Sus/FINALE/light', 400, 300);
	addAnimationByPrefix('BG5', 'idle', 'light', 30, false);
        setProperty("BG5.scale.y", 2.0);
        setProperty("BG5.scale.x", 2.0);
        setProperty('BG8.alpha', 0.8)


	makeLuaSprite('BG6', 'Sus/FINALE/splat', 350, 1100)
	scaleObject('BG6', 2, 2);

	makeLuaSprite('BG7', 'Sus/FINALE/fore', -650, 160)
	scaleObject('BG7', 2, 2);

	makeLuaSprite('BG72', 'Sus/FINALE/lightingpretender', -1250, -530)
	scaleObject('BG72', 2, 2);

	makeLuaSprite('BG8', 'Sus/FINALE/dark', -800, -220)
	scaleObject('BG8', 2, 2);
         setProperty('BG8.alpha', 1.2)

	makeAnimatedLuaSprite('BG9', 'Sus/FINALE/finaleFlashback', -300, -170);
	scaleObject('BG9', 2, 2);
	addAnimationByPrefix('BG9', 'moog', 'finaleFlashback moog', 30, false);
	addAnimationByPrefix('BG9', 'toog', 'finaleFlashback toog', 30, false);
	addAnimationByPrefix('BG9', 'doog', 'finaleFlashback doog', 30, false);
        setProperty('BG9.alpha', 0.6)
        setProperty('BG9.visible', false)
        setObjectCamera('BG9', 'other')

        addLuaSprite('BG0', true)
        addLuaSprite('BG1', false)
        addLuaSprite('BG2', false)
        addLuaSprite('BG3', false)
        addLuaSprite('BG4', true)
        addLuaSprite('BG6', true)
        addLuaSprite('BG7', true)
        addLuaSprite('BG72', true)
        addLuaSprite('BG8', true)
        addLuaSprite('BG5', true)
        addLuaSprite('BG9', true)

        setProperty('BG1.visible', false)
        setProperty('BG2.visible', false)
        setProperty('BG3.visible', false)
        setProperty('BG4.visible', false)
        setProperty('BG5.visible', false)
        setProperty('BG6.visible', false)
        setProperty('BG7.visible', false)
        setProperty('BG8.visible', false)



        makeLuaSprite('rojo', '', 0, 0);
        makeGraphic('rojo',1280,720,'FF0000')
        addLuaSprite('rojo', true)
        setObjectCamera('rojo', 'other')
        setProperty('rojo.visible', false)

        makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'ffffff')
	doTweenAlpha('flash','flash',0, 0.1,'linear')
        addLuaSprite('flash', true)
        setObjectCamera('flash', 'other')

        makeLuaSprite('negro', '', 0, 0);
        makeGraphic('negro',1280,720,'000000')
	doTweenAlpha('negro','negro',0, 0.1,'linear')
        addLuaSprite('negro', true)
        setObjectCamera('negro', 'other')


        makeLuaSprite('roja', '', 0, 0);
        makeGraphic('roja',1280,720,'FF0066')
        addLuaSprite('roja', true)
        setObjectCamera('roja', 'other')
        setProperty('roja.visible', false)

        makeLuaSprite('roja2', '', 0, 0);
        makeGraphic('roja2',1280,720,'FF0066')
        addLuaSprite('roja2', true)
        setObjectCamera('roja2', 'other')
        setProperty('roja2.visible', false)


end
function onBeatHit()
       if curBeat % 4== 0 then

       objectPlayAnimation('BG5', 'idle', true);

       end
end
function onCountdownStarted()
	for i = 0, 3 do
		setPropertyFromGroup('opponentStrums', i, 'x', -900);
        end	
end
function onCreatePost()

  setTextSize('songNameTxt', 15)
  addLuaText('songNameTxt', true)
  setProperty('iconP2.visible', false);
  setProperty('iconP1.visible', false);
  setProperty('healthBarBG.visible', false);
  setProperty('healthBar.visible', false);
  setObjectCamera('scoreTxt', 'hud')


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

        if not downscroll then -- if upscroll

        setProperty('bar.y', 520)
        setProperty('Blue1.y', 520)
        setProperty('Blue2.y', 520)
        setProperty('Blue3.y', 520)
        setProperty('Blue4.y', 520)
        setProperty('Blue5.y', 520)
        setProperty('Blue6.y', 520)
        setProperty('Blue7.y', 520)
        setProperty('Blue8.y', 520)
        setProperty('Blue9.y', 520)
        setProperty('Blue10.y', 520)
        setProperty('Blue11.y', 520)
        setProperty('Blue12.y', 520)
        setProperty('Blue13.y', 520)
        setProperty('Blue14.y', 520)
        setProperty('Blue15.y', 520)
        setProperty('Blue16.y', 520)
        setProperty('Blue17.y', 520)
        setProperty('Blue18.y', 520)
        setProperty('Blue19.y', 520)
        setProperty('Blue20.y', 520)
        setProperty('icon-bf.y', 570)
        setProperty('icon-b.y', 430)
        setProperty('bar.flipY', false)
        setProperty('Blue1.flipY', false)
        setProperty('Blue2.flipY', false)
        setProperty('Blue3.flipY', false)
        setProperty('Blue4.flipY', false)
        setProperty('Blue5.flipY', false)
        setProperty('Blue6.flipY', false)
        setProperty('Blue7.flipY', false)
        setProperty('Blue8.flipY', false)
        setProperty('Blue9.flipY', false)
        setProperty('Blue10.flipY', false)
        setProperty('Blue11.flipY', false)
        setProperty('Blue12.flipY', false)
        setProperty('Blue13.flipY', false)
        setProperty('Blue14.flipY', false)
        setProperty('Blue15.flipY', false)
        setProperty('Blue16.flipY', false)
        setProperty('Blue17.flipY', false)
        setProperty('Blue18.flipY', false)
        setProperty('Blue19.flipY', false)
        setProperty('Blue20.flipY', false)
end       
end
function onUpdate()
   setProperty('timeBarBG.visible', false)
   setProperty('timeBar.visible', false)
   setProperty('timeTxt.visible', false)
   setProperty('gf.alpha', 0);
     
   if getProperty('health') > 1.95 then
   setProperty('Blue20.visible', true)
   setProperty('Blue19.visible', false)

   elseif getProperty('health') > 1.9 then
   setProperty('Blue20.visible', false)
   setProperty('Blue19.visible', true)
   setProperty('Blue18.visible', false)

   elseif getProperty('health') > 1.8 then
   setProperty('Blue19.visible', false)
   setProperty('Blue18.visible', true)
   setProperty('Blue17.visible', false)

   elseif getProperty('health') > 1.7 then
   setProperty('Blue18.visible', false)
   setProperty('Blue17.visible', true)
   setProperty('Blue16.visible', false)

   elseif getProperty('health') > 1.6 then
   setProperty('Blue17.visible', false)
   setProperty('Blue16.visible', true)
   setProperty('Blue15.visible', false)

   elseif getProperty('health') > 1.5 then
   setProperty('Blue16.visible', false)
   setProperty('Blue15.visible', true)
   setProperty('Blue14.visible', false)

   elseif getProperty('health') > 1.4 then
   setProperty('Blue15.visible', false)
   setProperty('Blue14.visible', true)
   setProperty('Blue13.visible', false)

   elseif getProperty('health') > 1.3 then
   setProperty('Blue14.visible', false)
   setProperty('Blue13.visible', true)
   setProperty('Blue12.visible', false)

   elseif getProperty('health') > 1.2 then
   setProperty('Blue13.visible', false)
   setProperty('Blue12.visible', true)
   setProperty('Blue11.visible', false)

   elseif getProperty('health') > 1.1 then
   setProperty('Blue12.visible', false)
   setProperty('Blue11.visible', true)
   setProperty('Blue10.visible', false)

   elseif getProperty('health') > 1.0 then
   setProperty('Blue11.visible', false)
   setProperty('Blue10.visible', true)
   setProperty('Blue9.visible', false)

   elseif getProperty('health') > 0.9 then
   setProperty('Blue10.visible', false)
   setProperty('Blue9.visible', true)
   setProperty('Blue8.visible', false)

   elseif getProperty('health') > 0.8 then
   setProperty('Blue9.visible', false)
   setProperty('Blue8.visible', true)
   setProperty('Blue7.visible', false)

   elseif getProperty('health') > 0.7 then
   setProperty('Blue8.visible', false)
   setProperty('Blue7.visible', true)
   setProperty('Blue6.visible', false)

   elseif getProperty('health') > 0.6 then
   setProperty('Blue7.visible', false)
   setProperty('Blue6.visible', true)
   setProperty('Blue5.visible', false)

   elseif getProperty('health') > 0.5 then
   setProperty('Blue6.visible', false)
   setProperty('Blue5.visible', true)
   setProperty('Blue4.visible', false)

   elseif getProperty('health') > 0.4 then
   setProperty('Blue5.visible', false)
   setProperty('Blue4.visible', true)
   setProperty('Blue3.visible', false)

   elseif getProperty('health') > 0.3 then
   setProperty('Blue4.visible', false)
   setProperty('Blue3.visible', true)
   setProperty('Blue2.visible', false)

   elseif getProperty('health') > 0.2 then
   setProperty('Blue3.visible', false)
   setProperty('Blue2.visible', true)
   setProperty('Blue1.visible', false)

   elseif getProperty('health') < 0.1 then
   setProperty('Blue2.visible', false)
   setProperty('Blue1.visible', true)

   elseif getProperty('health') < 0.09 then
   setProperty('Blue1.visible', false)
end
    if curBeat == 32 then
        setProperty('defaultCamZoom',0.8)
    end

    if curBeat < 32 then --start
        triggerEvent('Camera Follow Pos', 750, 800)
    end

    if curBeat >= 32 and curBeat < 48 then --first to black
        triggerEvent('Camera Follow Pos', 450, 1000)
    end
    if curBeat >= 48 and curBeat < 64 then --to bf
        triggerEvent('Camera Follow Pos', 1250, 1000)
    end
    if curBeat >= 64 and curBeat < 68 then --bf zoom in
        triggerEvent('Camera Follow Pos', 1400, 1050)
        setProperty('defaultCamZoom',1.2)
    end
    if curBeat == 67 then
        setProperty('defaultCamZoom',2.4)
    end
    if followchars == true and curBeat >= 68 then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.4)
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

            setProperty('defaultCamZoom',0.5)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    if curBeat == 492 then
        doTweenZoom('defeated', 'camGame', 2.4, 1.2, 'circIn')
    end
end
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'moog' then
                        objectPlayAnimation('BG9', 'moog', true);
			setProperty('BG9.visible', true);
		end

		if value1 == 'toog' then
                        objectPlayAnimation('BG9', 'toog', true);

		end

		if value1 == 'doog' then
                        objectPlayAnimation('BG9', 'doog', true);

		end

		if value1 == 'a' then
	doTweenAlpha('flash','flash',1, 1.2,'linear')

		end

		if value1 == 'o' then
	doTweenAlpha('flash','flash',0, 0.1,'linear')
			setProperty('BG9.visible', false);
		end

		if value1 == 'negro' then
	doTweenAlpha('negro','negro',1, 0.1,'linear')
		end

		if value1 == 'rojo' then
			setProperty('rojo.visible', true);
	doTweenAlpha('rojo','rojo',0, 1.0,'linear')
		end

		if value1 == 'roja' then
			setProperty('roja.visible', true);
	doTweenAlpha('roja','roja',0, 1.0,'linear')
		end

		if value1 == 'roja2' then
			setProperty('roja2.visible', true);
	doTweenAlpha('roja2','roja2',0, 3.0,'linear')
	doTweenAlpha('negro','negro',1, 0.1,'linear')
		end



		if value1 == 'FINALE' then
			setProperty('BG1.visible', true);
			setProperty('BG2.visible', true);
			setProperty('BG3.visible', true);
			setProperty('BG4.visible', true);
			setProperty('BG5.visible', true);
			setProperty('BG6.visible', true);
			setProperty('BG7.visible', true);
			setProperty('BG8.visible', true);


	doTweenAlpha('Blue20','Blue20',1, 0.1,'linear')
	doTweenAlpha('Blue19','Blue19',1, 0.1,'linear')
	doTweenAlpha('Blue18','Blue18',1, 0.1,'linear')
	doTweenAlpha('Blue17','Blue17',1, 0.1,'linear')
	doTweenAlpha('Blue16','Blue16',1, 0.1,'linear')
	doTweenAlpha('Blue15','Blue15',1, 0.1,'linear')
	doTweenAlpha('Blue14','Blue14',1, 0.1,'linear')
	doTweenAlpha('Blue13','Blue13',1, 0.1,'linear')
	doTweenAlpha('Blue12','Blue12',1, 0.1,'linear')
	doTweenAlpha('Blue11','Blue11',1, 0.1,'linear')
	doTweenAlpha('Blue10','Blue10',1, 0.1,'linear')
	doTweenAlpha('Blue9','Blue9',1, 0.1,'linear')
	doTweenAlpha('Blue8','Blue8',1, 0.1,'linear')
	doTweenAlpha('Blue7','Blue7',1, 0.1,'linear')
	doTweenAlpha('Blue6','Blue6',1, 0.1,'linear')
	doTweenAlpha('Blue5','Blue5',1, 0.1,'linear')
	doTweenAlpha('Blue4','Blue4',1, 0.1,'linear')
	doTweenAlpha('Blue3','Blue3',1, 0.1,'linear')
	doTweenAlpha('Blue2','Blue2',1, 0.1,'linear')
	doTweenAlpha('Blue1','Blue1',1, 0.1,'linear')
	doTweenAlpha('icon-bf','icon-bf',1, 0.1,'linear')
	doTweenAlpha('icon-b','icon-b',1, 0.1,'linear')
	doTweenAlpha('bar','bar',1, 0.1,'linear')
   doTweenColor('scoreTxt', 'scoreTxt', 'FF0066', 0.1, 'linear');
   doTweenColor('Watermark', 'Watermark', 'ff0066', 0.1, 'linear');  

               end
	end
end
