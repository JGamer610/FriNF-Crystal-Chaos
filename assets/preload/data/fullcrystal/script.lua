local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'lunch');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onSongStart()
	noteTweenAlpha("CHNoteFade1", 0, 0, 0.3, circOut)
end

function onBeatHit()
	if curBeat == 1 then
	noteTweenAlpha("CHNoteFade2", 1, 0, 0.3, circOut)
	end
	if curBeat == 2 then
	noteTweenAlpha("CHNoteFade3", 2, 0, 0.3, circOut)
	end
	if curBeat == 3 then
	noteTweenAlpha("CHNoteFade3", 3, 0, 0.3, circOut)
	end
	if curBeat == 16 then
	noteTweenX("BfNoteStarting1", 4, 400, 0.3, circOut)
	end
	if curBeat == 17 then
	noteTweenX("BfNoteStarting2", 5, 525, 0.3, circOut)
	end
	if curBeat == 18 then
	noteTweenX("BfNoteStarting3", 6, 650, 0.3, circOut)
	end
	if curBeat == 19 then
	noteTweenX("BfNoteStarting4", 7, 775, 0.3, circOut)
	end
end