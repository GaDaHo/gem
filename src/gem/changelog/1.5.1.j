function Gem_Changelog___1_5_1 takes nothing returns nothing
	local string title = Gem_Changelog__Title ("1.5.1")
	local string date = "N/A"
	local string text = ""

	set text = text + Color__Gold ("Added") + "\n"
	set text = text + "- Introduced a new effect to indicate that the player can make a slate. In part, this is due to a peculiar, and unsolved, issue where slate names do not always appear.\n"
	set text = text + "\n"

	set text = text + Color__Gold ("Changed") + "\n"
	set text = text + "- Further explained details of the Extra Chance changes in the 1.5.0 changelog.\n"
	set text = text + "\n"

	set text = text + Color__Gold ("Fixed") + "\n"
	set text = text + "- Handling of rank related to players Green and Pink reaching the Damage Test has been resolved.\n"

	call Gem_Changelog__Setup (title, text, date)
endfunction
