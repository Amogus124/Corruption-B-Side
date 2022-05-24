function onCreate()
	makeLuaSprite('overlay', 'overlay', -650, -310);
	setLuaSpriteScrollFactor('overlay', 0, 0);
	defaultCamZoom = getProperty('defaultCamZoom') - 0.01;
	setProperty('overlay.scale.x', 0.52 / defaultCamZoom);
	setProperty('overlay.scale.y', 0.56 / defaultCamZoom);
	setProperty('overlay.alpha', 0.0001);
	addLuaSprite('overlay', true);
end

-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "overlay" then
		setProperty('overlay.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'overlay', 0, 2, 'linear');
	end
end