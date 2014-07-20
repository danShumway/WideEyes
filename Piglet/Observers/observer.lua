local observer = {}

function observer.observe()

	--Grab what keys are being pressed.
	Piglet.Memory.Instant.currentKeys = Piglet.Hardware.Hand.getKeys()
	--Grab the eye data and set it.
	Piglet.Memory.Instant.lastFrame = Piglet.Memory.Instant.currentFrame
	Piglet.Memory.Instant.currentFrame = Piglet.Hardware.Eye.getFrame()

	for a=1, 256*16*16 do
		if(Piglet.Memory.Instant.lastFrame[a] ~= Piglet.Memory.Instant.currentFrame[a]) then
			--Record changes that are relevant.
			Piglet.Memory.Instant.changes[a] = Piglet.Memory.Instant.currentFrame[a] - Piglet.Memory.Instant.lastFrame[a]
		else
			--Set as nil.  This will make other loops more efficient if we use for... in.
			Piglet.Memory.Instant.changes[a] = nil
		end
	end
end


return observer