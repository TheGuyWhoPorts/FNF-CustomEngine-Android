
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 300;
local yy = 500;
local xx2 = 700;
local yy2 = 500;
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

	makeLuaSprite('BG0', 'Sus/newAirship/fartingSky', -2300, -650);
	scaleObject('BG0', 2, 2)
    setLuaSpriteScrollFactor('BG0', 0.4, 0.4);

	makeLuaSprite('BG1', 'Sus/newAirship/backSkyyellow', -1110, 250);
	scaleObject('BG1', 2, 2)
    setLuaSpriteScrollFactor('BG1', 0.4, 0.4);

	makeLuaSprite('BG2', 'Sus/newAirship/yellow cloud 3', 1240, 315);
	scaleObject('BG2', 2, 2)
    setLuaSpriteScrollFactor('BG2', 0.8, 0.8);

	makeLuaSprite('BG3', 'Sus/newAirship/yellow could 2', -930, 325);
	scaleObject('BG3', 2, 2)
   setLuaSpriteScrollFactor('BG3', 0.8, 0.9);
        setProperty("BG3.scale.x", 1.1);
        setProperty("BG3.scale.y", 1.1);

	makeLuaSprite('BG4', 'Sus/newAirship/cloudYellow 1', -1550, 280);
	scaleObject('BG4', 2, 2)
    setLuaSpriteScrollFactor('BG4', 0.95, 0.95);

	makeLuaSprite('BG5', 'Sus/newAirship/window', -1390, -1260);

	makeLuaSprite('BG6', 'Sus/newAirship/backDlowFloor', -650, 340);

	makeLuaSprite('BG7', 'Sus/newAirship/DlowFloor', -2440, 340);

	makeLuaSprite('BG8', 'Sus/newAirship/Teleporter', 990, 620);


        addLuaSprite('BG0', false)
        addLuaSprite('BG1', false)
        addLuaSprite('BG2', false)
        addLuaSprite('BG3', false)
        addLuaSprite('BG4', false)
        addLuaSprite('BG5', false)
        addLuaSprite('BG6', false)
        addLuaSprite('BG7', false)
        addLuaSprite('BG8', false)


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
   doTweenColor('scoreTxt', 'scoreTxt', 'f0b946', 1, 'linear');
   doTweenColor('Watermark', 'Watermark', 'f0b946', 1, 'linear');  

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
            setProperty('defaultCamZoom',0.6)
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

            setProperty('defaultCamZoom',0.6)
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
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'white' then
   doTweenColor('scoreTxt', 'scoreTxt', 'd1d2f8', 0.1, 'linear');
   doTweenColor('Watermark', 'Watermark', 'd1d2f8', 0.1, 'linear');  

               end
	end
end

