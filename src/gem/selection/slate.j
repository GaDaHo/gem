// Gem Selection Slate
// ===================
//
// Depends
// -------
//
// - Color
// - Gem 3.1
// - Gem Gems
// - Gem Placement
// - Gem Selection

globals
	constant integer Gem_Selection_Slate__ABILITY = 'A03M'
endglobals

function Gem_Selection_Slate___Tag takes unit the_unit, string text, integer red, integer green, integer blue returns nothing
	local texttag tag

	call UnitAddAbility (the_unit, Gem_Selection_Slate__ABILITY)

	set tag = CreateTextTag ()

	call SetTextTagText (tag, text, 0.023)
	call SetTextTagPos (tag, GetUnitX (the_unit), GetUnitY (the_unit), 0.0)
	call SetTextTagColor (tag, red, green, blue, 255)
	call SetTextTagPermanent (tag, false)
	call SetTextTagLifespan (tag, 3.0)
	call SetTextTagFadepoint (tag, 2.5)
	call SetTextTagVisibility (tag, true)

	set tag = null
endfunction

function Gem_Selection_Slate__Has takes player whom, integer slate returns boolean
	local integer N
	local integer A
	local integer B
	local integer C

	set N = Gem_Slate__Get_Normal (slate)
	if Gem_Selection__Get_Count (whom, N) <= 0 then
		return false
	endif

	set A = Gem_Slate__Get_Flawed_A (slate)
	if Gem_Selection__Get_Count (whom, A) > 0 then
		return true
	endif

	set B = Gem_Slate__Get_Flawed_B (slate)
	if Gem_Selection__Get_Count (whom, B) > 0 then
		return true
	endif

	set C = Gem_Slate__Get_Flawed_C (slate)
	if Gem_Selection__Get_Count (whom, C) > 0 then
		return true
	endif

	return false
endfunction

function Gem_Selection_Slate___On_Finish takes nothing returns boolean
	local player the_player

	local unit the_unit
	local integer the_unit_type

	local integer index

	set the_player = Gem_Placement__The_Player ()

	set index = 1
	loop
		exitwhen not Gem_Selection__Has (the_player, index)

		set the_unit = Gem_Selection__Get (the_player, index)
		set the_unit_type = GetUnitTypeId (the_unit)

		if Gem_Gems__Get_ID_Quality (the_unit_type) == Gem_Quality__NORMAL then
			if the_unit_type == Gem_Gems__AMETHYST_NORMAL then

				// Air Slate:
				if Gem_Selection_Slate__Has (the_player, Gem_Slate__AIR) then
					call Gem_Selection_Slate___Tag (the_unit, "Air Slate", 0, 255, 255)
				endif

			elseif the_unit_type == Gem_Gems__AQUAMARINE_NORMAL then

				// Spell Slate:
				if Gem_Selection_Slate__Has (the_player, Gem_Slate__SPELL) then
					call Gem_Selection_Slate___Tag (the_unit, "Spell Slate", 255, 0, 255)
				endif

			elseif the_unit_type == Gem_Gems__DIAMOND_NORMAL then

				// Damage Slate:
				if Gem_Selection_Slate__Has (the_player, Gem_Slate__DAMAGE) then
					call Gem_Selection_Slate___Tag (the_unit, "Damage Slate", 0, 255, 255)
				endif

			elseif the_unit_type == Gem_Gems__EMERALD_NORMAL then

				// Poison Slate:
				if Gem_Selection_Slate__Has (the_player, Gem_Slate__POISON) then
					call Gem_Selection_Slate___Tag (the_unit, "Poison Slate", 0, 255, 0)
				endif

			elseif the_unit_type == Gem_Gems__OPAL_NORMAL then

				// Opal Vein Slate:
				if Gem_Selection_Slate__Has (the_player, Gem_Slate__OPAL_VEIN) then
					call Gem_Selection_Slate___Tag (the_unit, "Opal Vein Slate", 0, 255, 255)
				endif

			elseif the_unit_type == Gem_Gems__RUBY_NORMAL then

				// Range Slate:
				if Gem_Selection_Slate__Has (the_player, Gem_Slate__RANGE) then
					call Gem_Selection_Slate___Tag (the_unit, "Range Slate", 255, 127, 0)
				endif

			elseif the_unit_type == Gem_Gems__SAPPHIRE_NORMAL then

				// Slow Slate:
				if Gem_Selection_Slate__Has (the_player, Gem_Slate__SLOW) then
					call Gem_Selection_Slate___Tag (the_unit, "Slow Slate", 0, 0, 255)
				endif

			elseif the_unit_type == Gem_Gems__TOPAZ_NORMAL then

				// Hold Slate:
				if Gem_Selection_Slate__Has (the_player, Gem_Slate__HOLD) then
					call Gem_Selection_Slate___Tag (the_unit, "Hold Slate", 0, 0, 255)
				endif

			endif
		endif

		set index = index + 1
	endloop

	set the_player = null
	set the_unit = null

	return false
endfunction

function Gem_Selection_Slate___Event takes nothing returns boolean
	local player the_player
	local integer the_player_index

	local unit original
	local integer original_type

	local unit replacement
	local integer replacement_type

	local integer quality_id
	local integer quality_index

	local integer type_id

	if GetSpellAbilityId () != Gem_Selection_Slate__ABILITY then
		return false
	endif

	set the_player = GetTriggerPlayer ()
	set the_player_index = GetPlayerId (the_player)

	set original = GetTriggerUnit ()
	set original_type = GetUnitTypeId (original)

	if original_type == Gem_Gems__AMETHYST_NORMAL then
		set replacement_type = Gem_Slate__AIR

	elseif original_type == Gem_Gems__AQUAMARINE_NORMAL then
		set replacement_type = Gem_Slate__SPELL

	elseif original_type == Gem_Gems__DIAMOND_NORMAL then
		set replacement_type = Gem_Slate__DAMAGE

	elseif original_type == Gem_Gems__EMERALD_NORMAL then
		set replacement_type = Gem_Slate__POISON

	elseif original_type == Gem_Gems__OPAL_NORMAL then
		set replacement_type = Gem_Slate__OPAL_VEIN

	elseif original_type == Gem_Gems__RUBY_NORMAL then
		set replacement_type = Gem_Slate__RANGE

	elseif original_type == Gem_Gems__SAPPHIRE_NORMAL then
		set replacement_type = Gem_Slate__SLOW

	elseif original_type == Gem_Gems__TOPAZ_NORMAL then
		set replacement_type = Gem_Slate__HOLD
	endif

	call ShowUnit (original, false)
	set replacement = CreateUnit (the_player, replacement_type, GetUnitX (original), GetUnitY (original), GetUnitFacing (original))
	call RemoveUnit (original)

	call DisplayTextToPlayer (the_player, 0.00, 0.00, Color ("66ffff", "Slate Created!"))

	if Gem_Slate_Stacking__Is_Stacking (replacement) then
		call Gem_Slate_Stacking__Move (replacement)
	endif

	call Gem_Selection__Finalize (replacement, original)

	set the_player = null
	set original = null
	set replacement = null

	return false
endfunction

function Gem_Selection_Slate__Initialize takes nothing returns boolean
	call Gem_Placement__On_Finish (Condition (function Gem_Selection_Slate___On_Finish))
	call Gem_Selection__Register_Event (Condition (function Gem_Selection_Slate___Event))

	return false
endfunction
