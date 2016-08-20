function Quests___Version_1_3 takes nothing returns nothing
	local string title = Gem__NAME + " 1.3"
	local string text = ""

	set text = text + Color__Gold ("Fixed:") + "\n"
	set text = text + "- A slate could still retain the ability to move even after moving due to another slate movement bug.\n"
	set text = text + "- Spamming 'Keep Slate', when offered multiple slates, could cause extra units to spawn. This made it possible to skip multiple rounds, assuming the units were killed. This has been fixed."

	call Quests___Add_Changelog (title, text)
endfunction