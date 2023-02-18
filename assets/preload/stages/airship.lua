
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 700;
local yy = -2000;
local xx2 = 1634.05;
local yy2 = -54.3;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()



	makeLuaSprite('sky', 'Sus/danger/sky', -800, -1200);
	scaleObject('sky', 2, 2)
   addLuaSprite('sky', false);
        setProperty("sky.scale.y", 2.0);
        setProperty("sky.scale.x", 2.0);


	makeLuaSprite('nube0', 'Sus/danger/farthestClouds', 12060, 0);
	scaleObject('nube0', 2, 2)
   addLuaSprite('nube0', false);
        setProperty("nube0.scale.y", 2.0);
        setProperty("nube0.scale.x", 2.0);
	setLuaSpriteScrollFactor('nube0', 0.2, 0.2);


	makeLuaSprite('nube', 'Sus/danger/farthestClouds', 3000, 0);
	scaleObject('nube', 2, 2)
    addLuaSprite('nube', false);
        setProperty("nube.scale.y", 2.0);
        setProperty("nube.scale.x", 2.0);
	setLuaSpriteScrollFactor('nube', 0.2, 0.2);


	makeLuaSprite('nube2', 'Sus/danger/farthestClouds', -6060, 0);
	scaleObject('nube2', 2, 2)
   addLuaSprite('nube2', false);
        setProperty("nube2.scale.y", 2.0);
        setProperty("nube2.scale.x", 2.0);
	setLuaSpriteScrollFactor('nube2', 0.2, 0.2);



	makeLuaSprite('nub0', 'Sus/danger/backClouds', 12050, 400);
	scaleObject('nub0', 2, 2)
    addLuaSprite('nub0', false);
        setProperty("nub0.scale.y", 2.0);
        setProperty("nub0.scale.x", 2.0);
	setLuaSpriteScrollFactor('nub0', 0.2, 0.2);


	makeLuaSprite('nub', 'Sus/danger/backClouds', 3000, 400);
	scaleObject('nub', 2, 2)
    addLuaSprite('nub', false);
        setProperty("nub.scale.y", 2.0);
        setProperty("nub.scale.x", 2.0);
	setLuaSpriteScrollFactor('nub', 0.2, 0.2);


	makeLuaSprite('nub2', 'Sus/danger/backClouds', -6050, 400);
	addLuaSprite('nub2', false);
	scaleObject('nub2', 2, 2)
        setProperty("nub2.scale.y", 2.0);
        setProperty("nub2.scale.x", 2.0);
	setLuaSpriteScrollFactor('nub2', 0.2, 0.2);


	makeLuaSprite('airship', 'Sus/danger/airship', 1300, -900);
	scaleObject('airship', 2, 2)
    addLuaSprite('airship', false);
	setLuaSpriteScrollFactor('airship', 0.3, 0.3);

	makeAnimatedLuaSprite('airshipFan', 'Sus/danger/airshipFan', 2500, 0);
	scaleObject('airshipFan', 2, 2)
    addAnimationByPrefix('airshipFan', 'idle', 'ala avion instance 1', 30, true);
        objectPlayAnimation('airshipFan', 'idle', true);
	addLuaSprite('airshipFan', false);
	setLuaSpriteScrollFactor('airshipFan', 0.3, 0.3);


	makeLuaSprite('nu0', 'Sus/danger/frontClouds', 22000, 600);
	scaleObject('nu0', 2, 2)
   addLuaSprite('nu0', false);
        setProperty("nu0.scale.y", 2.0);
        setProperty("nu0.scale.x", 2.0);
	setLuaSpriteScrollFactor('nu0', 0.5, 0.5);



	makeLuaSprite('nu', 'Sus/danger/frontClouds', 6000, 600);
	scaleObject('nu', 2, 2)
    addLuaSprite('nu', false);
        setProperty("nu.scale.y", 2.0);
        setProperty("nu.scale.x", 2.0);
	setLuaSpriteScrollFactor('nu', 0.5, 0.5);


	makeLuaSprite('nu1', 'Sus/danger/frontClouds', -10000, 600);
	addLuaSprite('nu1', false);
	scaleObject('nu1', 2, 2)
        setProperty("nu1.scale.y", 2.0);
        setProperty("nu1.scale.x", 2.0);
	setLuaSpriteScrollFactor('nu1', 0.5, 0.5);


	makeLuaSprite('nubef', 'Sus/danger/bigCloud', 3400, -800);
	addLuaSprite('nubef', false);
	scaleObject('nubef', 2, 2)
	setLuaSpriteScrollFactor('nubef', 0.6, 0.6);

	makeLuaSprite('a', 'Sus/danger/speedlines', 6000, -800);
	scaleObject('a', 2, 2)
    addLuaSprite('a', true);
        setProperty("a.scale.y", 2.0);
        setProperty("a.scale.x", 2.0);


	makeLuaSprite('BG0', 'Sus/danger/fgPlatform', -1200, 260);
	scaleObject('BG0', 2, 2)
    addLuaSprite('BG0', false);

	makeLuaSprite('BG1', 'Sus/danger/fgPlatform', 1090, 260);
	scaleObject('BG1', 2, 2)
    addLuaSprite('BG1', false);

	makeLuaSprite('BG2', 'Sus/danger/fgPlatform', 3380, 260);
	scaleObject('BG2', 2, 2)
    addLuaSprite('BG2', false);


	makeAnimatedLuaSprite('s', 'Sus/danger/rojo', 100, -200);
    addAnimationByPrefix('s', 'idle', 'rojo idle', 8, true);
	addLuaSprite('s', false);
    setProperty("s.scale.x", 2.5);
    setProperty("s.scale.y", 2.5);
	setProperty('s.visible', false)


	makeAnimatedLuaSprite('C', 'Sus/danger/blacklegs', 260, 360);
    addAnimationByPrefix('C', 'idle', 'legs', 30, true);
        objectPlayAnimation('C', 'idle', true);
	addLuaSprite('C', false);
    setProperty("C.scale.x", 1.3);
    setProperty("C.scale.y", 1.3);
        setObjectOrder('C',18);

	makeAnimatedLuaSprite('B', 'Sus/danger/bf_legs', 1565, 420);
	scaleObject('B', 2, 2)
    addAnimationByPrefix('B', 'idle', 'run legs', 30, true);
        objectPlayAnimation('B', 'idle', true);
	addLuaSprite('B', false);



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

runTimer('correr',0.5)
runTimer('nube',0.5)
runTimer('nub',0.5)
runTimer('nu',0.5)
runTimer('nuf',10)
--runTimer('a',0.3)

end
function onCreatePost()

  makeLuaText('songNameTxt', songName, 0, 124, 19.3)
  setTextAlignment('songNameTxt', 'left')
  setTextSize('songNameTxt', 15)
  addLuaText('songNameTxt', true)


   --makeLuaTexts
  makeLuaText('Watermark', 'Port by Marcelo', 0, 4, getProperty('healthBarBG.y') + 58);

  
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
   doTweenColor('scoreTxt', 'scoreTxt', '36164c', 1, 'linear');
   doTweenColor('Watermark', 'Watermark', '36164c', 1, 'linear');


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
    if curStep == 1 then
        setProperty('defaultCamZoom',0.3)
		followchars = true
        xx = 1634.05
        yy = -54.3
        xx2 = 1634.05
        yy2 = -54.3
    end
    if curBeat == 64 then
        setProperty('defaultCamZoom', 0.4)
        followchars = true
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 96 then
        setProperty('defaultCamZoom', 0.6)
        followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 128 then
        setProperty('defaultCamZoom', 0.4)
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 155 then
        setProperty('defaultCamZoom', 0.8)
        followchars = true
        xx = 450
        yy = 150
        xx2 = 450
        yy2 = 150
    end
    if curBeat == 160 then
        setProperty('defaultCamZoom', 0.4)
        followchars = true
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 192 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 256 then
        setProperty('defaultCamZoom', 0.4)
        followchars = true
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 288 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 320 then
        setProperty('defaultCamZoom', 0.3)
        followchars = true
        xx = 1634.05
        yy = -54.3
        xx2 = 1634.05
        yy2 = -54.3
    end
    if curBeat == 384 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end

    
end
function onTimerCompleted(t,l,ll)
       if t == 'correr' then

		setProperty('BG0.x', -1200)
		doTweenX('BG0','BG0', -3490, 0.8,'linear')
		setProperty('BG1.x', 1090)
		doTweenX('BG1','BG1', -1200, 0.8,'linear')
		setProperty('BG2.x', 3380)
		doTweenX('BG2','BG2', 1090, 0.8,'linear')
                runTimer('correr',0.8)

        end
       if t == 'nube' then

		setProperty('nube0.x', 12060)
		doTweenX('nube0','nube0', 3000, 90,'linear')
		setProperty('nube.x', 3000)
		doTweenX('nube','nube', -6060, 90,'linear')
		setProperty('nube2.x', -6060)
		doTweenX('nube2','nube2', -15120, 90,'linear')
                runTimer('nube',90)

        end
       if t == 'nub' then


		setProperty('nub0.x', 12050)
		doTweenX('nub0','nub0', 3000, 60,'linear')
		setProperty('nub.x', 3000)
		doTweenX('nub','nub', -6050, 60,'linear')
		setProperty('nub2.x', -6050)
		doTweenX('nub2','nub2', -15100, 60,'linear')
                runTimer('nub',60)


        end
       if t == 'nu' then

		setProperty('nu0.x', 22000)
		doTweenX('nu0','nu0', 6000, 30,'linear')
		setProperty('nu.x', 6000)
		doTweenX('nu','nu', -10000, 30,'linear')
		setProperty('nu1.x', -10000)
		doTweenX('nu1','nu1', -26000, 30,'linear')
                runTimer('nu',30)

        end
       if t == 'nuf' then

		setProperty('nubef.x', 3400)
		doTweenX('nubef','nubef', -6000, 60,'linear')
                runTimer('nuf',60)
        end
       if t == 'a' then

		setProperty('a.x', 6000)
		doTweenX('a','a', -9000, 1,'linear')
                runTimer('a',5)

        end
end
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'a' then
			doTweenX("gf", "gf", -4000, 2.0, "linear")	


		end
		
                if value1 == 's' then
	                setProperty('s.visible', true)
                        objectPlayAnimation('s', 'idle', true);
		end
		
                if value1 == 'sa' then
	                setProperty('s.visible', false)
                end
	end
end

