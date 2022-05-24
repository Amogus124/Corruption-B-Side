function onCreate()
	-- background shit
	makeLuaSprite('halloween_bgD3dark', 'spooky3/halloween_bgD3dark', -200, -100);
	setLuaSpriteScrollFactor('halloween_bgD3dark', 0.9, 0.9);
	
	makeLuaSprite('halloween_bgD3', 'spooky3/halloween_bgD3', -200, -100);
	setLuaSpriteScrollFactor('halloween_bgD3', 0.9, 0.9);
	
	addLuaSprite('halloween_bgD3dark', false);
	
	
	
	addLuaSprite('halloween_bgD3', false);
	   setProperty('halloween_bgD3.visible', false);
	
end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			                setProperty('halloween_bgD3dark.visible', false);
			                setProperty('halloween_bgD3.visible', true);
		
		end
		
		if value1 == '1' then
				             setProperty('halloween_bgD3dark.visible', true);
			                 setProperty('halloween_bgD3.visible', false);
		         end
		
		
        end
	
	
end