dofile('../interfaces/List.lua')
local hrt= dofile("../interfaces/Timer.lua")

--Load in any necessary modules.
observer = dofile('../observers/current.lua')
recorder = dofile('../recorders/printChangerTest.lua')
decider = dofile('../deciders/changerTest.lua')


--[[
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
              PIGLET
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

Copyright Daniel Shumway, 2014

-----------------------------------------------------------------------------------
--]]

Piglet = {} --Hai, I'm Piglet!


--[[
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
              STORAGE AND APPENDEGES
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Piglet has specific locations to store memory in.

Instant memory serves as a holding tank for what is actually happening at the moment.
Think of it as her perception of the world around her.
Short term memory is the stuff that Piglet is actively remembering and thinking about.
Long term memory is an external database that is only loaded into short term memory.

Piglet also has virtual 'appendeges' that serve as her link to the VBA emulator.
An 'eye' allows her to read in byte data from memory, and 'hand' allows her to send
keypresses to the emulator.  Piglet observes what these appendeges are doing/sending
and stores that in instant memory as well.
-----------------------------------------------------------------------------------
--]]

--ToDo: replace these with classes that wrap around the data structures.
Piglet.Memory = {}
Piglet.Memory.Instant = dofile('Memory/Instant/instant.lua')
Piglet.Memory.Short = {}--dofile('Memory/Shor')

--We don't have an accessible long.  What long should be is a class that pulls data and puts it into short.

Piglet.Eye = {}
Piglet.Hand = {}


--[[
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
              MENTAL PROCESSES
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-----------------------------------------------------------------------------------
--]]

Piglet.Observer = {}
Piglet.Processor = {}
Piglet.Decider = {}


--[[
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
              MENTAL PROCESSES
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-----------------------------------------------------------------------------------
--]]

--Piglet has a mental tick
function Piglet.tick()
	--Observe Information
	--Process Relevant Information
	--Decide Input
end


--Draw any messages required to the screen.  
--Do memory display or whatever the heck you want here as well.
--Note that this is not attached to Piglet.
function draw()

end


--main
while(true) do
	--Piglet sees.
	--Eye

	tick(dx); --Call the main loop, passing in the elapsed time since the last frame.
	draw(dx); --Draw anything required to the screen.

	vba.frameadvance() --Advance the emulator one frame.
end