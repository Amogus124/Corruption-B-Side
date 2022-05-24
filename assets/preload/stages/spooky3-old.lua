function onCreate()

	makeLuaSprite('halloween_bg_old_low','spooky3-old/halloween_bg_old_low', -200, -100);
	addLuaSprite('halloween_bg_old_low', false);
	makeAnimatedLuaSprite('halloween_bg_old', 'spooky3-old/halloween_bg_old',-200, -100);
	addLuaSprite('halloween_bg_old', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('halloween_bg_old', 'idle', 'halloweem bg lightning strike', 6, true);
	setProperty('halloween_bg_old.visible', false);
	
	

end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
		   
			setProperty('halloween_bg_old_low.visible', false);
			setProperty('halloween_bg_old.visible', true);
			 playSound('thunder2_1', 1);
		
		end
	
		if value1 == '1' then
            setProperty('halloween_bg_old_low.visible', true);
			setProperty('halloween_bg_old.visible', false);

		end
	end
end
function onBeatHit()
	-- triggered 20 times per section
	if curBeat % 8	== 0 then
	 triggerEvent('Play Animation',2,0)
	end
	if curBeat % 16 == 0 then
	 triggerEvent('Play Animation',1,0)
	end
end
