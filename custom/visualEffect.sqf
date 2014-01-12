// VISUAL EFFECT
// Credits: Fer

// ====================================================================================

// WAIT FOR PARAMSARRAY TO BE PROCESSED

waitUntil {scriptDone f_processParamsArray};

// ====================================================================================

if (custom_param_vE == 1) then {

	"colorCorrections" ppEffectEnable true;
	"filmGrain" ppEffectEnable true;
	"filmGrain" ppEffectAdjust [0.05, -1, 0.5, 0.05, 2, false]; 
	"filmGrain" ppEffectCommit 1; 
	"colorCorrections" ppEffectAdjust[ 0.67, 1, 0.01, [0.03, 0.1, 0, -0.34],[1.8, 1.8, 0.3, 0.7],[0.2, 0.59, 0.11, 0]];
	"colorCorrections" ppEffectCommit 1;

};

// ====================================================================================
