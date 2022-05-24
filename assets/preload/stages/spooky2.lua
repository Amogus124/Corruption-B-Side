function onCreate()
	-- background shit
	makeLuaSprite('halloween_bgD2dark', 'spooky2/halloween_bgD2dark', -200, -100);
	setLuaSpriteScrollFactor('halloween_bgD2dark', 0.9, 0.9);
	
	makeLuaSprite('halloween_bgD2', 'spooky2/halloween_bgD2', -200, -100);
	setLuaSpriteScrollFactor('halloween_bgD2', 0.9, 0.9);
	
	addLuaSprite('halloween_bgD2dark', false);
	
	
	
	addLuaSprite('halloween_bgD2', false);
	   setProperty('halloween_bgD2.visible', false);
	
end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			                setProperty('halloween_bgD2dark.visible', false);
			                setProperty('halloween_bgD2.visible', true);
		
		end
		
		if value1 == '1' then
				             setProperty('halloween_bgD2dark.visible', true);
			                 setProperty('halloween_bgD2.visible', false);
		         end
		
		
        end
	
	
end