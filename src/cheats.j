// # Cheats
//
// Detect use of certain built-in Warcraft III cheat codes in single-player.
// This is done without creating visible units to the player and in
// a fashion that should not alter gameplay at all.  Functionality is quite
// sparatan, and only a single function to determine if cheats were detected
// is provided.  Upon detection, this system disables itself.
//
// The following cheats are detected:
//
// - Invincibility: `whosyourdaddy`.
// - Infinite mana: `thereisnospoon`.
// - Gold: `keysersoze`.
// - Lumber: `leafittome`.
// - Gold and lumber: `greedisgood`.
// - Fast building: `warpten`.

globals
	constant integer Cheats___UNIT_ID = 'cdun'
	constant integer Cheats___UNIT_BASE_ID = 'nrat'

	constant integer Cheats___MANA_ID = 'cdma'
	constant integer Cheats___MANA_BASE_ID = 'Aroa'
	constant string Cheats___MANA_ORDER = "roar"

	constant real Cheats___INVINCIBILITY_PERIOD = 0.05
	constant real Cheats___NO_MANA_PERIOD = 0.05
	constant real Cheats___BUILD_PERIOD = 0.5

	constant integer Cheats___CANCEL_ORDER_ID = 851976

	player Cheats___PLAYER = Player (0)

	trigger Cheats___INVINCIBILITY = null
	trigger Cheats___NO_MANA = null
	trigger Cheats___RESOURCES = null
	trigger Cheats___BUILD = null

	unit Cheats___ATTACKER = null
	unit Cheats___VICTIM = null
	unit Cheats___CASTER = null
	unit Cheats___TRAINER = null

	real Cheats___LIFE = 0.
	real Cheats___DAMAGE = 0.

	boolean Cheats___Detected = false
endglobals

function Cheats__Detected takes nothing returns boolean
	return Cheats___Detected
endfunction

function Cheats___Is_Detected takes nothing returns nothing
	set Cheats___Detected = true

	call DestroyTrigger (Cheats___INVINCIBILITY)
	call DestroyTrigger (Cheats___NO_MANA)
	call DestroyTrigger (Cheats___RESOURCES)
	call DestroyTrigger (Cheats___BUILD)

	call RemoveUnit (Cheats___ATTACKER)
	call RemoveUnit (Cheats___VICTIM)
	call RemoveUnit (Cheats___CASTER)
	call RemoveUnit (Cheats___TRAINER)

	set Cheats___PLAYER = null

	set Cheats___INVINCIBILITY = null
	set Cheats___NO_MANA = null
	set Cheats___RESOURCES = null
	set Cheats___BUILD = null

	set Cheats___ATTACKER = null
	set Cheats___VICTIM = null
	set Cheats___CASTER = null
	set Cheats___TRAINER = null
endfunction

function Cheats___Invincibility takes nothing returns boolean
	call SetUnitInvulnerable (Cheats___VICTIM, false)
	call UnitDamageTarget (Cheats___ATTACKER, Cheats___VICTIM, Cheats___DAMAGE, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_UNIVERSAL, null)

	if UnitAlive (Cheats___VICTIM) then
		call SetUnitState (Cheats___VICTIM, UNIT_STATE_LIFE, Cheats___LIFE)
		call SetUnitInvulnerable (Cheats___VICTIM, true)
	else
		call Cheats___Is_Detected ()
	endif

	return false
endfunction

function Cheats___No_Mana takes nothing returns boolean
	if IssueImmediateOrder (Cheats___CASTER, Cheats___MANA_ORDER) then
		call Cheats___Is_Detected ()
	endif

	return false
endfunction

function Cheats___Resources takes nothing returns boolean
	call Cheats___Is_Detected ()

	return false
endfunction

function Cheats___Fast_Build takes nothing returns boolean
	if GetTriggerEventId () == EVENT_UNIT_TRAIN_FINISH then
		call RemoveUnit (GetTrainedUnit ())
		call Cheats___Is_Detected ()
	else
		call IssueImmediateOrderById (Cheats___TRAINER, Cheats___CANCEL_ORDER_ID)
		call IssueImmediateOrderById (Cheats___TRAINER, Cheats___UNIT_ID)
	endif

	return false
endfunction

function Cheats__Initialize takes nothing returns boolean
	// Ignore games that are not single-player.
	if not bj_isSinglePlayer then
		return false
	endif

	// A single-player game can be online.  Ignore those.
	if Game_Status () == Game_Status__ONLINE then
		return false
	endif

	// Avoid using the slot occupied by the player.
	if GetPlayerSlotState (Cheats___PLAYER) == PLAYER_SLOT_STATE_PLAYING then
		set Cheats___PLAYER = Player (1)
	endif

	// Invincibility: `whosyourdaddy`.
	set Cheats___ATTACKER = CreateUnit (GetLocalPlayer (), Cheats___UNIT_ID, 0., 0., 0.)
	call SetUnitInvulnerable (Cheats___ATTACKER, true)
	call ShowUnit (Cheats___ATTACKER, false)

	set Cheats___VICTIM = CreateUnit (Player (PLAYER_NEUTRAL_AGGRESSIVE), Cheats___UNIT_ID, 0., 0., 0.)
	call SetUnitInvulnerable (Cheats___VICTIM, true)
	call ShowUnit (Cheats___VICTIM, false)

	set Cheats___LIFE = GetUnitState (Cheats___VICTIM, UNIT_STATE_MAX_LIFE)
	set Cheats___DAMAGE = Cheats___LIFE - 1.

	set Cheats___INVINCIBILITY = CreateTrigger ()
	call TriggerRegisterTimerEvent (Cheats___INVINCIBILITY, Cheats___INVINCIBILITY_PERIOD, true)
	call TriggerAddCondition (Cheats___INVINCIBILITY, Condition (function Cheats___Invincibility))

	// Infinite mana: `thereisnospoon`.
	set Cheats___CASTER = CreateUnit (Cheats___PLAYER, Cheats___UNIT_ID, 0., 0., 0.)
	call SetUnitInvulnerable (Cheats___CASTER, true)
	call ShowUnit (Cheats___CASTER, false)
	call UnitAddAbility (Cheats___CASTER, Cheats___MANA_ID)

	set Cheats___NO_MANA = CreateTrigger ()
	call TriggerRegisterTimerEvent (Cheats___NO_MANA, Cheats___NO_MANA_PERIOD, true)
	call TriggerAddCondition (Cheats___NO_MANA, Condition (function Cheats___No_Mana))

	// Gold: `keysersoze`.
	// Lumber: `leafittome`.
	// Gold and lumber: `greedisgood`.
	set Cheats___RESOURCES = CreateTrigger ()
	call TriggerRegisterPlayerStateEvent (Cheats___RESOURCES, Cheats___PLAYER, PLAYER_STATE_RESOURCE_GOLD, NOT_EQUAL, 0.)
	call TriggerRegisterPlayerStateEvent (Cheats___RESOURCES, Cheats___PLAYER, PLAYER_STATE_RESOURCE_LUMBER, NOT_EQUAL, 0.)
	call TriggerAddCondition (Cheats___RESOURCES, Condition (function Cheats___Resources))

	// Fast build: `warpten`.
	set Cheats___TRAINER = CreateUnit (Cheats___PLAYER, Cheats___UNIT_ID, 0., 0., 0.)
	call SetUnitInvulnerable (Cheats___TRAINER, true)
	call ShowUnit (Cheats___TRAINER, false)

	set Cheats___BUILD = CreateTrigger ()
	call TriggerRegisterUnitEvent (Cheats___BUILD, Cheats___TRAINER, EVENT_UNIT_TRAIN_FINISH)
	call TriggerRegisterTimerEvent (Cheats___BUILD, Cheats___BUILD_PERIOD, true)
	call TriggerAddCondition (Cheats___BUILD, Condition (function Cheats___Fast_Build))
	call TriggerEvaluate (Cheats___BUILD)

	return false
endfunction