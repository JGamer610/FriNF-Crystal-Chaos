function onCreate()

	makeLuaSprite('BGch','CHbg',-70,0)
	addLuaSprite('BGch',false)

	makeLuaSprite('Fog','cloudybois',-400,-160)
	addLuaSprite('Fog',false)
	setLuaSpriteScrollFactor('Fog', 0.5,0.1)

	close(true)
	
end
	-- background shit
	function onBeatHit( ... ) --for every beat

end
	

function onStepHit( ... ) --for every beat

end

function onUpdate( ... ) --for every beat

end