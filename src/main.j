function InitCustomTriggers takes nothing returns nothing
	call InitTrig_Update_Classic_multi ()
	call InitTrig_kills_and_remove_Corpse ()
	call InitTrig_Inihilization ()
	call InitTrig_Round_Finish_reset ()
	call InitTrig_Spawning ()
	call InitTrig_Setup_New_Round_1 ()
	call InitTrig_Set_keeping_Gem ()
	call InitTrig_Special_Mark ()
	call InitTrig_Gem_Awards ()
	call InitTrig_Gem_Awards_Upgrade_debug ()
	call InitTrig_Player_Leaves ()
	call InitTrig_Quests_messages ()
	call InitTrig_Lvl_15_1st_kill_money_bonus ()
	call InitTrig_Lvl_15_2nd_kill_money_bonus ()
	call InitTrig_Creeps_attacking ()
	call InitTrig_Debug ()
	call InitTrig_Type_Air ()
	call InitTrig_Cancels_Building_idiot_proofing ()
	call InitTrig_Setting_Extra_Chances ()
	call InitTrig_Extra_Chance_1 ()
	call InitTrig_Extra_Chance_2 ()
	call InitTrig_Slate_Extra_Chance_1 ()
	call InitTrig_Slate_Extra_Chance_2 ()
	call InitTrig_Increased_Extra_Chance ()
	call InitTrig_Swap_Reworked ()
	call InitTrig_Slate_Stack_Check ()
	call InitTrig_AntiStuck ()
	call InitTrig_Slate_move ()
	call InitTrig_Range_Check ()
	call InitTrig_Remove_rocks ()
	call InitTrig_Maxed_out_quality_Upgrade ()
	call InitTrig_Maxed_out_Extra_chance_upgrade ()
	call InitTrig_Buying_Lives ()
	call InitTrig_Reworked_Combining_specials_Classic ()
	call InitTrig_DownGrade_find ()
	call InitTrig_DownGrade ()
	call InitTrig_Create_Slates ()
	call InitTrig_Find_spell_levels ()
	call InitTrig_Frenzy_not_on_yet ()
	call InitTrig_Tourmaline ()
	call InitTrig_Tourmaline_Facet ()
	call InitTrig_Ancient_Bloodstone ()
	call InitTrig_Spell_Slate ()
	call InitTrig_Elder_Slate ()
	call InitTrig_Dark_Emerald ()
	call InitTrig_Air_Slate ()
	call InitTrig_Slow_Slate ()
	call InitTrig_Hold_Slate ()
	call InitTrig_Damage_Slate ()
	call InitTrig_Poison_Slate ()
	call InitTrig_Ancient_Slate ()
	call InitTrig_Lucky_China_Jade ()
	call InitTrig_Opal_Vein_SLate ()
	call InitTrig_Mid_game_dmg_test_inihilaize ()
	call InitTrig_Mid_game_dmg_test_Finish ()
	call InitTrig_Mid_game_dmg_test_kills ()
	call InitTrig_Race_Mid_Game_ReRunner_1 ()
	call InitTrig_Race_Mid_Game_ReRunner_2 ()
	call InitTrig_Race_Mid_Game_ReRunner_3 ()
	call InitTrig_Race_Mid_Game_ReRunner_4 ()
	call InitTrig_Race_Mid_Game_ReRunner_5 ()
	call InitTrig_Race_Mid_Game_ReRunner_6 ()
	call InitTrig_Race_Mid_Game_ReRunner_7 ()
	call InitTrig_Race_Mid_Game_ReRunner_8 ()
	call InitTrig_Hits_mid_tester ()
	call InitTrig_Hits_GemBaby ()
	call InitTrig_Late_game_dmg_test_inihilaize ()
	call InitTrig_Late_game_dmg_test_Finish ()
	call InitTrig_Late_game_dmg_test_kills ()
	call InitTrig_End_game_dmg_test_inihilaize ()
	call InitTrig_End_game_dmg_test_Finish ()
	call InitTrig_End_game_dmg_test_kills ()
	call InitTrig_End_game_dmg_test_RACE_kills ()
	call InitTrig_P1_Dmg_test ()
	call InitTrig_P2_Dmg_test ()
	call InitTrig_P3_Dmg_test ()
	call InitTrig_P4_Dmg_test ()
	call InitTrig_P5_Dmg_test ()
	call InitTrig_P6_Dmg_test ()
	call InitTrig_P7_Dmg_test ()
	call InitTrig_P8_Dmg_test ()
	call InitTrig_Type_aura_on ()
	call InitTrig_Type_aura_off ()
	call InitTrig_Players_attacking ()
	call InitTrig_Miner_Leaves_area ()
	call InitTrig_Leak_and_lose_P1 ()
	call InitTrig_Not_Finished_P1 ()
	call InitTrig_Movement1_1 ()
	call InitTrig_Movement1_2 ()
	call InitTrig_Movement1_3 ()
	call InitTrig_Movement1_4 ()
	call InitTrig_Movement1_5 ()
	call InitTrig_Movement1_6 ()
	call InitTrig_Movement1_7 ()
	call InitTrig_B_Reworked_Placing_gems_P1 ()
	call InitTrig_B_Reworked_Mark_P1 ()
	call InitTrig_B_Reworked_Comb_Special_Mark_P1 ()
	call InitTrig_Finding_Special_combinations_P1 ()
	call InitTrig_Leak_and_lose_P2 ()
	call InitTrig_Not_Finished_P2 ()
	call InitTrig_Movement2_1 ()
	call InitTrig_Movement2_2 ()
	call InitTrig_Movement2_3 ()
	call InitTrig_Movement2_4 ()
	call InitTrig_Movement2_5 ()
	call InitTrig_Movement2_6 ()
	call InitTrig_Movement2_7 ()
	call InitTrig_B_Reworked_Placing_gems_P2 ()
	call InitTrig_B_Reworked_Mark_P2 ()
	call InitTrig_B_Reworked_Comb_Special_Mark_P2 ()
	call InitTrig_Finding_Special_combinations_P2 ()
	call InitTrig_Leak_and_lose_P3 ()
	call InitTrig_Not_Finished_P3 ()
	call InitTrig_Movement3_1 ()
	call InitTrig_Movement3_2 ()
	call InitTrig_Movement3_3 ()
	call InitTrig_Movement3_4 ()
	call InitTrig_Movement3_5 ()
	call InitTrig_Movement3_6 ()
	call InitTrig_Movement3_7 ()
	call InitTrig_B_Reworked_Placing_gems_P3 ()
	call InitTrig_B_Reworked_Mark_P3 ()
	call InitTrig_B_Reworked_Comb_Special_Mark_P3 ()
	call InitTrig_Finding_Special_combinations_P3 ()
	call InitTrig_Leak_and_lose_P4 ()
	call InitTrig_Not_Finished_P4 ()
	call InitTrig_Movement4_1 ()
	call InitTrig_Movement4_2 ()
	call InitTrig_Movement4_3 ()
	call InitTrig_Movement4_4 ()
	call InitTrig_Movement4_5 ()
	call InitTrig_Movement4_6 ()
	call InitTrig_Movement4_7 ()
	call InitTrig_B_Reworked_Placing_gems_P4 ()
	call InitTrig_B_Reworked_Mark_P4 ()
	call InitTrig_B_Reworked_Comb_Special_Mark_P4 ()
	call InitTrig_Finding_Special_combinations_P4 ()
	call InitTrig_Leak_and_lose_P5 ()
	call InitTrig_Not_Finished_P5 ()
	call InitTrig_Movement5_1 ()
	call InitTrig_Movement5_2 ()
	call InitTrig_Movement5_3 ()
	call InitTrig_Movement5_4 ()
	call InitTrig_Movement5_5 ()
	call InitTrig_Movement5_6 ()
	call InitTrig_Movement5_7 ()
	call InitTrig_B_Reworked_Placing_gems_P5 ()
	call InitTrig_B_Reworked_Mark_P5 ()
	call InitTrig_B_Reworked_Comb_Special_Mark_P5 ()
	call InitTrig_Finding_Special_combinations_P5 ()
	call InitTrig_Leak_and_lose_P6 ()
	call InitTrig_Not_Finished_P6 ()
	call InitTrig_Movement6_1 ()
	call InitTrig_Movement6_2 ()
	call InitTrig_Movement6_3 ()
	call InitTrig_Movement6_4 ()
	call InitTrig_Movement6_5 ()
	call InitTrig_Movement6_6 ()
	call InitTrig_Movement6_7 ()
	call InitTrig_B_Reworked_Placing_gems_P6 ()
	call InitTrig_B_Reworked_Mark_P6 ()
	call InitTrig_B_Reworked_Comb_Special_Mark_P6 ()
	call InitTrig_Finding_Special_combinations_P6 ()
	call InitTrig_Leak_and_lose_P7 ()
	call InitTrig_Not_Finished_P7 ()
	call InitTrig_Movement7_1 ()
	call InitTrig_Movement7_2 ()
	call InitTrig_Movement7_3 ()
	call InitTrig_Movement7_4 ()
	call InitTrig_Movement7_5 ()
	call InitTrig_Movement7_6 ()
	call InitTrig_Movement7_7 ()
	call InitTrig_B_Reworked_Placing_gems_P7 ()
	call InitTrig_B_Reworked_Mark_P7 ()
	call InitTrig_B_Reworked_Comb_Special_Mark_P7 ()
	call InitTrig_Finding_Special_combinations_P7 ()
	call InitTrig_Leak_and_lose_P8 ()
	call InitTrig_Not_Finished_P8 ()
	call InitTrig_Movement8_1 ()
	call InitTrig_Movement8_2 ()
	call InitTrig_Movement8_3 ()
	call InitTrig_Movement8_4 ()
	call InitTrig_Movement8_5 ()
	call InitTrig_Movement8_6 ()
	call InitTrig_Movement8_7 ()
	call InitTrig_B_Reworked_Placing_gems_P8 ()
	call InitTrig_B_Reworked_Mark_P8 ()
	call InitTrig_B_Reworked_Comb_Special_Mark_P8 ()
	call InitTrig_Finding_Special_combinations_P8 ()
	call InitTrig_General_Startup ()
	call InitTrig_BJ_General ()
	call InitTrig_Slot_1_Enter ()
	call InitTrig_Slot_1_Spin_main ()
	call InitTrig_Leave_Machine ()
	call InitTrig_Slot_1_Spin_1 ()
	call InitTrig_Slot_1_Spin_2 ()
	call InitTrig_Slot_1_Spin_3 ()
	call InitTrig_Slot_1_Spin_4 ()
	call InitTrig_Slot_2_Enter ()
	call InitTrig_Slot_2_Spin_main ()
	call InitTrig_Leave_Machine_2 ()
	call InitTrig_Slot_2_Spin_1 ()
	call InitTrig_Slot_2_Spin_2 ()
	call InitTrig_Slot_2_Spin_3 ()
	call InitTrig_Slot_2_Spin_4 ()
	call InitTrig_Slot_3_Enter ()
	call InitTrig_Slot_3_Spin_main ()
	call InitTrig_Leave_Machine_3 ()
	call InitTrig_Slot_3_Spin_1 ()
	call InitTrig_Slot_3_Spin_2 ()
	call InitTrig_Slot_3_Spin_3 ()
	call InitTrig_Slot_3_Spin_4 ()
	call InitTrig_Slot_4_Enter ()
	call InitTrig_Slot_4_Spin_Main ()
	call InitTrig_Leave_Machine_4 ()
	call InitTrig_Slot_4_Spin_1 ()
	call InitTrig_Slot_4_Spin_2 ()
	call InitTrig_Slot_4_Spin_3 ()
	call InitTrig_Slot_4_Spin_4 ()
	call InitTrig_Slot_5_Enter ()
	call InitTrig_Slot_5_Spin_Main ()
	call InitTrig_Leave_Machine_5 ()
	call InitTrig_Slot_5_Spin_1 ()
	call InitTrig_Slot_5_Spin_2 ()
	call InitTrig_Slot_5_Spin_3 ()
	call InitTrig_Slot_5_Spin_4 ()
	call InitTrig_Slot_6_Enter ()
	call InitTrig_Slot_6_Spin_Main ()
	call InitTrig_Leave_Machine_6 ()
	call InitTrig_Slot_6_Spin_1 ()
	call InitTrig_Slot_6_Spin_2 ()
	call InitTrig_Slot_6_Spin_3 ()
	call InitTrig_Slot_6_Spin_4 ()
	call InitTrig_Slot_7_Enter ()
	call InitTrig_Slot_7_Spin_Main ()
	call InitTrig_Leave_Machine_7 ()
	call InitTrig_Slot_7_Spin_1 ()
	call InitTrig_Slot_7_Spin_2 ()
	call InitTrig_Slot_7_Spin_3 ()
	call InitTrig_Slot_7_Spin_4 ()
	call InitTrig_BJ_Leave ()
	call InitTrig_BJ_Enter ()
	call InitTrig_BJ_Start_up ()
	call InitTrig_BJ_Player_Hits ()
	call InitTrig_BJ_Dealers_Hit ()
	call InitTrig_BJ_Reset_BJ_1 ()
	call InitTrig_BJ_Player_Stays ()
	call InitTrig_BJ_PlayerDealer_Runoff ()
	call InitTrig_BJ_Leave_2 ()
	call InitTrig_BJ_Enter_2 ()
	call InitTrig_BJ_Start_up_2 ()
	call InitTrig_BJ_Player_Hits_2 ()
	call InitTrig_BJ_Dealers_Hit_2 ()
	call InitTrig_BJ_Reset_BJ_2 ()
	call InitTrig_BJ_Player_Stays_2 ()
	call InitTrig_BJ_PlayerDealer_Runoff_2 ()
	call InitTrig_Kills_ReRunner ()
	call InitTrig_Level_25_P1 ()
	call InitTrig_Fin_P1_2 ()
	call InitTrig_Level_25_P2 ()
	call InitTrig_Fin_P2_2 ()
	call InitTrig_Level_25_P3 ()
	call InitTrig_Fin_P3_2 ()
	call InitTrig_Level_25_P4 ()
	call InitTrig_Fin_P4_2 ()
	call InitTrig_Level_25_P5 ()
	call InitTrig_Fin_P5_2 ()
	call InitTrig_Level_25_P6 ()
	call InitTrig_Fin_P6_2 ()
	call InitTrig_Level_25_P7 ()
	call InitTrig_Fin_P7_2 ()
	call InitTrig_Level_25_P8 ()
	call InitTrig_Fin_P8_2 ()
	call InitTrig_Update_Race_Multi ()
	call InitTrig_Race_Mode_Kills ()
	call InitTrig_Reworked_Combining_specials_Race ()
	call InitTrig_Finish_Build_Race_P1 ()
	call InitTrig_Finish_Build_Race_P2 ()
	call InitTrig_Finish_Build_Race_P3 ()
	call InitTrig_Finish_Build_Race_P4 ()
	call InitTrig_Finish_Build_Race_P5 ()
	call InitTrig_Finish_Build_Race_P6 ()
	call InitTrig_Finish_Build_Race_P7 ()
	call InitTrig_Finish_Build_Race_P8 ()
	call InitTrig_New_Level_P1 ()
	call InitTrig_New_Level_P2 ()
	call InitTrig_New_Level_P3 ()
	call InitTrig_New_Level_P4 ()
	call InitTrig_New_Level_P5 ()
	call InitTrig_New_Level_P6 ()
	call InitTrig_New_Level_P7 ()
	call InitTrig_New_Level_P8 ()
endfunction
function RunInitializationTriggers takes nothing returns nothing
	call ConditionalTriggerExecute (gg_trg_Inihilization)
endfunction
function main takes nothing returns nothing
	call SetCameraBounds (-9472.0 + GetCameraMargin (CAMERA_MARGIN_LEFT), -9728.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 9472.0 -GetCameraMargin (CAMERA_MARGIN_RIGHT), 9216.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -9472.0 + GetCameraMargin (CAMERA_MARGIN_LEFT), 9216.0 - GetCameraMargin (CAMERA_MARGIN_TOP), 9472.0 - GetCameraMargin (CAMERA_MARGIN_RIGHT), -9728.0 + GetCameraMargin (CAMERA_MARGIN_BOTTOM))
	call SetDayNightModels ("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
	call NewSoundEnvironment ("Default")
	call SetAmbientDaySound ("SunkenRuinsDay")
	call SetAmbientNightSound ("SunkenRuinsNight")
	call SetMapMusic ("Music", true, 0)

	// Initialization of each system gets its own thread.  This will help in
	// ensuring that the operation limit is not reached on map initialization.
	call ExecuteFunc ("Unit_Indexer__Initialize")
	call ExecuteFunc ("Unit_User_Data__Initialize")

	call InitSounds ()
	call CreateRegions ()
	call CreateAllDestructables ()
	call CreateAllUnits ()
	call InitBlizzard ()
	call InitGlobals ()
	call InitCustomTriggers ()
	call RunInitializationTriggers ()

	// Must occur after all Gem 3.1 initializations (for now).
	call ExecuteFunc ("Settings__Initialize")
endfunction
