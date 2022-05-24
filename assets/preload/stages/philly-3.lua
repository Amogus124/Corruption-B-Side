function onCreate()
	-- background 
-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	    
	    makeLuaSprite('black', 'philly3/black', -500, -300);
	    setLuaSpriteScrollFactor('black', 0.9, 0.9);
	
		makeLuaSprite('sky','philly3/sky', -100, 00);
		setLuaSpriteScrollFactor('sky', 0.1, 0.1);
		
		makeLuaSprite('city','philly3/city', -10, 0);
		setLuaSpriteScrollFactor('city', 0.3, 0.3);
		scaleObject('city', 0.85, 0.85);
		makeAnimatedLuaSprite('light', 'philly3/light',-10, 0);
        setLuaSpriteScrollFactor('light', 0.3, 0.3);		
	    scaleObject('light',0.85, 0.85);
		makeLuaSprite('behindTrain','philly3/behindTrain', -40, 50);
		makeLuaSprite('street','philly3/street', -40, 50);
		makeAnimatedLuaSprite('phillyBoppers', 'philly3/phillyBoppers', -100, 500);
        setLuaSpriteScrollFactor('phillyBoppers', 0.9, 0.9);
        makeAnimatedLuaSprite('pogaPumpBop', 'philly3/pogaPumpBop', 1100, 300);
        setLuaSpriteScrollFactor('pogaPumpBop', 0.9, 0.9);
        makeAnimatedLuaSprite('meatballBop', 'philly3/meatballBop', 20, 300);
        setLuaSpriteScrollFactor('meatballBop', 0.9, 0.9);

	end
	
	addLuaSprite('black', false);
	addLuaSprite('sky', false);
	addLuaSprite('city', false);
	addLuaSprite('light', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('light', 'idle', 'light idle', 1, true);
	addLuaSprite('behindTrain', false);
	addLuaSprite('street', false);
	addLuaSprite('phillyBoppers', true); --Added offscreen before it starts moving.
	luaSpriteAddAnimationByPrefix('phillyBoppers', 'phillyBoppers', 'philly bop', 35, true);
	addLuaSprite('pogaPumpBop', false); --Added offscreen before it starts moving.
	luaSpriteAddAnimationByPrefix('pogaPumpBop', 'pogaPumpBop', 'poga idle', 35, true);
	addLuaSprite('meatballBop', false); --Added offscreen before it starts moving.
	luaSpriteAddAnimationByPrefix('meatballBop', 'meatballBop', 'meatbop', 35, true);
	setProperty('sky.visible', false);
	setProperty('city.visible', false);
	setProperty('light.visible', false);
	setProperty('behindTrain.visible', false);
	setProperty('street.visible', false);
	setProperty('phillyBoppers.visible', false);
	setProperty('pogaPumpBop.visible', false);
	setProperty('meatballBop.visible', false);
	
	
end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
		   setProperty('black.visible', false);
			setProperty('phillyBoppers.visible', true);
			setProperty('sky.visible', true);
			setProperty('city.visible', true);
			setProperty('light.visible', true);
			setProperty('behindTrain.visible', true);
			setProperty('street.visible', true);
			setProperty('pogaPumpBop.visible', true);
			setProperty('meatballBop.visible', true);
		
		end
		
		if value1 == '1' then
		    setProperty('black.visible', true);
			setProperty('phillyBoppers.visible', false);
			setProperty('sky.visible', false);
			setProperty('city.visible', false);
			setProperty('light.visible', false);
			setProperty('behindTrain.visible', false);
			setProperty('street.visible', false);
			setProperty('pogaPumpBop.visible', false);
			setProperty('meatballBop.visible', false);
		end
	end
end