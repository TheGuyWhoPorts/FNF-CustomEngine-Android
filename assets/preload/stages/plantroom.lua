
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  100;
local yy =  200;
local xx2 = 380;
local yy2 = 200;
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


	makeLuaSprite('sky', 'Sus/Mira/bg sky', -1400, -750);
	scaleObject('sky', 2, 2);

	makeLuaSprite('nubem', 'Sus/Mira/cloud fathest', -1000, -0);
	scaleObject('nubem', 2, 2);

	makeLuaSprite('nube1', 'Sus/Mira/cloud 1', -600, -1300);
	scaleObject('nube1', 2, 2);

	makeLuaSprite('nube2', 'Sus/Mira/cloud 2', -1400, -1300);
	scaleObject('nube2', 2, 2);

	makeLuaSprite('nube3', 'Sus/Mira/cloud 3', -200, -1300);
	scaleObject('nube3', 2, 2);

	makeLuaSprite('nube4', 'Sus/Mira/cloud 4', -2000, -1300);
	scaleObject('nube4', 2, 2);

	makeLuaSprite('nubem2', 'Sus/Mira/cloud front', -1000, -0);
	scaleObject('nubem2', 2, 2);


	makeLuaSprite('BG1', 'Sus/Mira/glasses', -1200, -750);
	scaleObject('BG1', 2, 2);

	makeAnimatedLuaSprite('BG2', 'Sus/Mira/crew', -260, -75);
	addAnimationByPrefix('BG2', 'idle', 'grey', 24, false);
	scaleObject('BG2', 2, 2);

	makeAnimatedLuaSprite('BG3', 'Sus/Mira/crew', 725, -60);
	addAnimationByPrefix('BG3', 'idle', 'tomatomongus', 24, false);
	scaleObject('BG3', 2, 2);

	makeLuaSprite('BG4', 'Sus/Mira/what is this', 0, -650);
	scaleObject('BG4', 2, 2);

	makeLuaSprite('BG5', 'Sus/Mira/lmao', -795, -15);
	scaleObject('BG5', 2, 2);
        
	makeAnimatedLuaSprite('BG6', 'Sus/Mira/crew', -1245, -15);
	addAnimationByPrefix('BG6', 'idle', 'blue', 24, false);
	scaleObject('BG6', 2, 2);
	setLuaSpriteScrollFactor('BG6', 1.1, 1.1);

	makeLuaSprite('BG7', 'Sus/Mira/front pot', -1475, 650);
	scaleObject('BG7', 2, 2);
	setLuaSpriteScrollFactor('BG7', 1.1, 1.1);

	makeAnimatedLuaSprite('BG8', 'Sus/Mira/crew', 1025, 100);
	addAnimationByPrefix('BG8', 'idle', 'RHM', 24, false);
	scaleObject('BG8', 2, 2);
	setLuaSpriteScrollFactor('BG8', 1.1, 1.1);

	makeAnimatedLuaSprite('BG9', 'Sus/Mira/vines', -1100, -1225);
	addAnimationByPrefix('BG9', 'idle', 'green', 24, false);
	scaleObject('BG9', 2, 2);
	setLuaSpriteScrollFactor('BG9', 1.2, 1.2);
        objectPlayAnimation('BG9', 'idle', true);


	makeAnimatedLuaSprite('BG11', 'Sus/Mira/hearts', -20, -0);
	scaleObject('BG11', 2, 2);
	addAnimationByPrefix('BG11', 'idle', 'Symbol 2', 24, true);
	setObjectCamera('BG11','other')
        objectPlayAnimation('BG11', 'idle', true);
	doTweenAlpha('BG11','BG11',0, 0.1,'linear')


        makeLuaSprite('BG10', 'Sus/Mira/vignette2', -0, -0);
	setObjectCamera('BG10','other')
        setProperty("BG10.scale.x", 1.0);
        setProperty("BG10.scale.y", 1.0);
        setProperty('BG10.alpha',1.0)
	doTweenAlpha('BG10','BG10',0, 0.1,'linear')


        makeAnimatedLuaSprite('part', 'Sus/Mira/littleheart', math.random(-2000, 3000), 1800);
        addAnimationByPrefix('part', 'idle', 'littleheart', 24, true);
        objectPlayAnimation('part', 'idle', true);
        scaleObject('part', 2.0, 2.0);    
        addLuaSprite('part', true)
        doTweenAlpha('part','part',0, 1.0,'linear')


	addLuaSprite('sky', false);
	addLuaSprite('nubem', false);
	addLuaSprite('nube1', false);
	addLuaSprite('nube2', false);
	addLuaSprite('nube3', false);
	addLuaSprite('nube4', false);
	addLuaSprite('nubem2', false);
	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', false);
	addLuaSprite('BG4', false);
	addLuaSprite('BG5', false);
	addLuaSprite('BG6', true);
	addLuaSprite('BG7', true);
	addLuaSprite('BG8', true);
	addLuaSprite('BG9', true);
	addLuaSprite('BG10', true);
	addLuaSprite('BG11', true);



end
function onCreatePost()

  makeLuaText('songNameTxt', songName, 0, 124, 19.3)
  setTextAlignment('songNameTxt', 'left')
  setTextSize('songNameTxt', 15)
  addLuaText('songNameTxt', true)

   --makeLuaTexts
  makeLuaText('Watermark', ',zip Port by Thepotra', 0, 4, getProperty('healthBarBG.y') + 58);

  
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
   doTweenColor('scoreTxt', 'scoreTxt', 'ee64cc', 1, 'linear');
   doTweenColor('Watermark', 'Watermark', 'ee64cc', 1, 'linear');  

end
function onBeatHit()
       if curBeat % 2== 0 then

       objectPlayAnimation('BG2', 'idle', true);
       objectPlayAnimation('BG3', 'idle', true);
       objectPlayAnimation('BG8', 'idle', true);

end
       if curBeat % 1== 0 then
       objectPlayAnimation('BG6', 'idle', true);
       end
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
            setProperty('defaultCamZoom',0.5)
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

function onEndSong()
    followchars = false;
    triggerEvent('Camera Follow Pos','400','150')
end
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'pink' then
		doTweenAlpha('BG10','BG10',1, 1.5,'linear')
		doTweenAlpha('BG11','BG11',1, 1.5,'linear')
                doTweenAlpha('part','part',1, 1.5,'linear')


                end

		if value1 == 'no' then
		doTweenAlpha('BG10','BG10',0, 1.5,'linear')
		doTweenAlpha('BG11','BG11',0, 1.5,'linear')
		doTweenAlpha('part','part',0, 1.5,'linear')

                end
	end
end

