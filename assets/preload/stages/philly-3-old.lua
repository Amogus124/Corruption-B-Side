function onCreate()
	-- background 
-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	    
		makeLuaSprite('sky','phillyOld/sky', -100, 00);
		setLuaSpriteScrollFactor('sky', 0.1, 0.1);
		
		makeLuaSprite('city','phillyOld/city', -10, 0);
		setLuaSpriteScrollFactor('city', 0.3, 0.3);
		scaleObject('city', 0.85, 0.85);
		makeAnimatedLuaSprite('light', 'phillyOld/light',-10, 0);
        setLuaSpriteScrollFactor('light', 0.3, 0.3);		
	    scaleObject('light',0.85, 0.85);
		makeLuaSprite('behindTrain','phillyOld/behindTrain', -40, 50);
		makeLuaSprite('street','phillyOld/street', -40, 50);
		makeAnimatedLuaSprite('phillyBop', 'phillyOld/phillyBop', -400, -400);
        setLuaSpriteScrollFactor('phillyBop', 0.9, 0.9);
        makeAnimatedLuaSprite('pumpBop', 'phillyOld/pumpBop', -400, -200);
        setLuaSpriteScrollFactor('pumpBop', 0.9, 0.9);
        
	end
	
	addLuaSprite('sky', false);
	addLuaSprite('city', false);
	addLuaSprite('light', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('light', 'idle', 'light idle', 1, true);
	addLuaSprite('behindTrain', false);
	addLuaSprite('street', false);
	addLuaSprite('phillyBop', true); --Added offscreen before it starts moving.
	luaSpriteAddAnimationByPrefix('phillyBop', 'phillyBop', 'phillyBoppers', 26, true);
	addLuaSprite('pumpBop', false); --Added offscreen before it starts moving.
	luaSpriteAddAnimationByPrefix('pumpBop', 'pumpBop', 'pumpBopping', 26, true);
	
end