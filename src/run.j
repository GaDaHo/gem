globals
	constant integer Run___IS_RUNNING = -1

	constant string Run___DEFAULT_ERROR = "Thread crash or failure encountered"
endglobals

function Run___Runner takes boolexpr condition, string label returns nothing
	local trigger runner = CreateTrigger ()
	local integer runner_id = GetHandleId (runner)

	local integer error = 0
	local string message = null

	call TriggerAddCondition (runner, condition)
	call SaveBoolean (Table, runner_id, Run___IS_RUNNING, true)

	call Error__Clear ()

	if not TriggerEvaluate (runner) then
		// We do not care about the error code, only the message.
		if Error__Message == null then
			set message = Run___DEFAULT_ERROR
		else
			set message = Error__Message
		endif

		call BJDebugMsg ("Error: " + label + ": " + message)
	endif

	call DestroyTrigger (runner)
	call FlushChildHashtable (Table, runner_id)

	set runner = null
endfunction

function Run__Condition takes boolexpr condition, string label returns nothing
	if condition == null or label == null then
		return
	endif

	call Run___Runner (condition, label)
endfunction

function Run__Code takes code task, string label returns nothing
	if task == null or label == null then
		return
	endif

	call Run___Runner (Condition (task), label)
endfunction