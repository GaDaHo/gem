globals
	constant integer Gem_Mine_Cancel___BUTTON_ID = 'GMCB'
	constant integer Gem_Mine_Cancel___PLACEHOLDER_ID = 'GMCP'

	constant string Gem_Mine_Cancel___ORDER = "neutralspell"
	constant integer Gem_Mine_Cancel___ORDER_ID = OrderId (Gem_Mine_Cancel___ORDER)
endglobals

function Gem_Mine_Cancel___Button takes nothing returns boolean
	local integer order_id = GetIssuedOrderId ()
	local player whom = null

	if order_id != Gem_Mine_Cancel___ORDER_ID then
		return true
	endif

	set whom = GetTriggerPlayer ()

	call DisplayTextToPlayer (whom, 0, 0, "Clearing the Extra Chance target")
	call Gem_Extra_Chance__Clear (whom)

	set whom = null

	return true
endfunction

function Gem_Mine_Cancel__Initialize takes trigger rule returns nothing
	local code task = function Gem_Mine_Cancel___Button
	local string label = "Gem_Mine_Cancel___Button ()"

	call Rule__Add_Code (rule, task, label)
	call Gem_Mine__Add_Research (Gem_Mine_Cancel___BUTTON_ID, Gem_Mine_Cancel___PLACEHOLDER_ID)
endfunction