function onCreate()
	-- background 
-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	    
		makeLuaSprite('sky','philly2/sky', -100, 00);
		setLuaSpriteScrollFactor('sky', 0.1, 0.1);
		
		makeLuaSprite('city','philly2/city', -10, 0);
		setLuaSpriteScrollFactor('city', 0.3, 0.3);
		scaleObject('city', 0.85, 0.85);
		makeAnimatedLuaSprite('light', 'philly2/light',-10, 0);
        setLuaSpriteScrollFactor('light', 0.3, 0.3);		
	    scaleObject('light',0.85, 0.85);
		makeLuaSprite('behindTrain','philly2/behindTrain', -40, 50);
		makeLuaSprite('street','philly2/street', -40, 50);
		makeAnimatedLuaSprite('phillyBoppers', 'philly2/phillyBoppers', -300, 500);
        setLuaSpriteScrollFactor('phillyBoppers', 0.9, 0.9);
        
        makeLuaSprite('hontongod', 'overlaypico', -150, -100);
	    setObjectCamera('hontongod', 'other');
	    scaleObject('hontongod', 1.2, 1.2);

	end
	
	addLuaSprite('sky', false);
	addLuaSprite('city', false);
	addLuaSprite('light', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('light', 'idle', 'light idle', 1, true);
	addLuaSprite('behindTrain', false);
	addLuaSprite('street', false);
	addLuaSprite('phillyBoppers', true); --Added offscreen before it starts moving.
	luaSpriteAddAnimationByPrefix('phillyBoppers', 'phillyBoppers', 'philly bop', 35, true);
	setProperty('phillyBoppers.visible', false);
	addLuaSprite('hontongod', false)
	setProperty('hontongod.visible', false)
	
	
end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('phillyBoppers.visible', true);
			setProperty('sky.visible', true);
			setProperty('city.visible', true);
			setProperty('light.visible', true);
			setProperty('behindTrain.visible', true);
			setProperty('street.visible', true);
		
		end
		
		if value1 == '1' then
			setProperty('phillyBoppers.visible', false);
			setProperty('sky.visible', true);
			setProperty('city.visible', true);
			setProperty('light.visible', true);
			setProperty('behindTrain.visible', true);
			setProperty('street.visible', true);
		end
	end
end