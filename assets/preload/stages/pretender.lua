
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


	makeLuaSprite('sky', 'Sus/Mira/pretender/bg sky', -1400, -750);
	scaleObject('sky', 2, 2);

	makeLuaSprite('nubem', 'Sus/Mira/pretender/cloud fathest', -1000, -0);

	makeLuaSprite('nube1', 'Sus/Mira/pretender/cloud 1', -600, -1300);

	makeLuaSprite('nube2', 'Sus/Mira/pretender/cloud 2', -1400, -1300);

	makeLuaSprite('nube3', 'Sus/Mira/pretender/cloud 3', -200, -1300);

	makeLuaSprite('nube4', 'Sus/Mira/pretender/cloud 4', -2000, -1300);

	makeLuaSprite('nubem2', 'Sus/Mira/pretender/cloud front', -1000, -0);


	makeLuaSprite('BG1', 'Sus/Mira/pretender/ground', -1200, -750);
	scaleObject('BG1', 2, 2);

	makeLuaSprite('BG2', 'Sus/Mira/pretender/ripbozo', 600, 450);
        setProperty("BG2.scale.y", 0.5);
        setProperty("BG2.scale.x", 0.5);

	makeLuaSprite('BG30', 'Sus/Mira/pretender/knocked over plant', 1025, 200);
	makeLuaSprite('BG3', 'Sus/Mira/pretender/tomatodead', 975, 230);

	makeLuaSprite('BG4', 'Sus/Mira/pretender/front plant', 0, -650);

	makeAnimatedLuaSprite('BG0', 'Sus/Mira/pretender/gf_dead_p', 0, 185);
	addAnimationByPrefix('BG0', 'idle', 'GF Dancing Beat', 24, false);

	makeLuaSprite('BG5', 'Sus/Mira/pretender/knocked over plant 2', -795, 305);
        setProperty("BG5.scale.y", 0.9);
        setProperty("BG5.scale.x", 0.9);

	makeAnimatedLuaSprite('BG6', 'Sus/Mira/pretender/blued', -1245, 305);
	addAnimationByPrefix('BG6', 'idle', 'bob bop', 24, false);
	setLuaSpriteScrollFactor('BG6', 1.1, 1.1);

	makeLuaSprite('BG7', 'Sus/Mira/pretender/front pot', -1475, 650);
	setLuaSpriteScrollFactor('BG7', 1.1, 1.1);

	makeLuaSprite('BG8', 'Sus/Mira/pretender/rhm dead', 1025, 600);

	makeLuaSprite('BG9', 'Sus/Mira/pretender/green', -1400, -800);
	scaleObject('BG9', 2, 2);
	setLuaSpriteScrollFactor('BG9', 1.2, 1.2);

	makeLuaSprite('BG10', 'Sus/Mira/pretender/lightingpretender', -1600, -950);
        setBlendMode('BG10','multiply')
        setProperty("BG10.scale.y", 0.9);
        setProperty("BG10.scale.x", 0.9);


	addLuaSprite('sky', false);
	addLuaSprite('nubem', false);
	addLuaSprite('nube1', false);
	addLuaSprite('nube2', false);
	addLuaSprite('nube3', false);
	addLuaSprite('nube4', false);
	addLuaSprite('nubem2', false);
	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG30', false);
	addLuaSprite('BG3', false);
	addLuaSprite('BG4', false);
	addLuaSprite('BG0', false);
	addLuaSprite('BG5', false);
	addLuaSprite('BG6', true);
	addLuaSprite('BG7', true);
	addLuaSprite('BG8', true);
	addLuaSprite('BG9', true);
	addLuaSprite('BG10', true);

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
   doTweenColor('scoreTxt', 'scoreTxt', '625773', 1, 'linear');
   doTweenColor('Watermark', 'Watermark', '625773', 1, 'linear');  

end
function onBeatHit()

       if curBeat % 2== 0 then
       objectPlayAnimation('BG6', 'idle', true);
       objectPlayAnimation('BG0', 'idle', true);

       end
end
function onUpdate()
   setProperty('timeBarBG.visible', false)
   setProperty('timeBar.visible', false)
   setProperty('timeTxt.visible', false)
   scaleObject('verde', 1.168 * getProperty("songPercent"), .035)
    setProperty('gf.alpha', 0)
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
