-- Vs Impostor V4 hud Script By OswaldGamerYT
function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.03 then
       setProperty('health', health- 0.018);
	end
end

function onCountdownStarted()
setProperty('timeBarBG.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeTxt.visible', false)
setProperty('scoreTxt.visible', false)

makeLuaText('score', '', getPropertyFromClass('flixel.FlxG', 'width'), getProperty('scoreTxt.x'), getProperty('scoreTxt.y'));

setTextSize('score',20);

setTextBorder('score', 1, '000000');
setTextAlignment('score', 'center');
addLuaText('score');
setObjectOrder('score', getObjectOrder('scoreTxt'))
setProperty('score.color', getColorFromHex(rgbToHex(getProperty("dad.healthColorArray"))))

if checkList(Ex, songName)~=true then
makeLuaSprite('TB', 'UI/TB/timeBar', 297.5-200, 20+5)
addLuaSprite('TB', false)
scaleObject('TB', 1, 1)
setObjectCamera('TB', 'hud')
setScrollFactor('TB', 0, 0);

makeLuaSprite('color', 'UI/TB/color', 303-202, 25.25+4)
addLuaSprite('color', false)
setObjectCamera('color', 'hud')
scaleObject('color', 1.165, 0.0210)
setScrollFactor('color', 0, 0);
setProperty('color.alpha', 0.0001) 

setObjectOrder('TB', 100);
setObjectOrder('color', 101);

makeLuaText('songName', string.upper(songName), 300, getProperty('TB.x')+5, getProperty('TB.y')+1);
setTextSize('songName', 12);
setTextBorder('songName', 1, '000000');
setTextAlignment('songName', 'left');
addLuaText('songName');
setTextFont("songName", "arial.ttf");

doTweenColor('color', 'color', '19FF00', 0.01, 'linear')

if downscroll then 
setProperty('TB.y', 685)
setProperty('color.y', 690)
setProperty('songName.y', 687)
end
end
end

function onUpdate()

	setTextString('score', 'Score: '..score..' | Port by OswaldGamerYT | Combo Breaks: '..misses..' | Accuracy: '..round(rating * 100, 2)..'% ['..ratingFC..']')
end

function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end

function floorInDecimal(number, decimals)
    return math.floor(number * (10^decimals)) / (10^decimals)
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
if not isSustainNote then
setProperty("score.scale.x", 1.1)
setProperty("score.scale.y", 1.1)
doTweenX("scoreX", "score.scale", 1, 0.25, "linear")
doTweenY("scoreY", "score.scale", 1, 0.25, "linear")
end
end

function onEvent(name, value1, value2)
if name == "Reactor Beep" then
cameraFlash('camHUD', 'FF0000', 0.2)
end
if name == "flash" then
cameraFlash('camHUD', 'FFFFFF', 0.2)
end
if name == "Change Character" then
setProperty('ScoreAmogus.color', getColorFromHex(rgbToHex(getProperty("dad.healthColorArray"))))
end
end

function onCreatePost()
	setProperty('scoreTxt.color', getIconColor('dad'))
end

function onEvent(name, value1, value2)
	if string.lower(name) == "change character" then
		if tonumber(value1) == 1 then
			setProperty('scoreTxt.color', getIconColor('dad'))
		end
	end
end

function getIconColor(chr)
	local chr = chr or "dad"
	return getColorFromHex(rgbToHex(getProperty(chr .. ".healthColorArray")))
end

function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end