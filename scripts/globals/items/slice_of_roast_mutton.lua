-----------------------------------------
-- ID: 4437
-- Item: slice_of_roast_mutton
-- Food Effect: 180Min, All Races
-----------------------------------------
-- Strength 3
-- Intelligence -1
-- Attack % 27
-- Attack Cap 30
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
	if (target:hasStatusEffect(EFFECT_FOOD) == true) then
		result = 246;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addStatusEffect(EFFECT_FOOD,0,0,10800,4437);
end;

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
	target:addMod(MOD_STR, 3);
	target:addMod(MOD_INT, -1);
	target:addMod(MOD_FOOD_ATTP, 27);
	target:addMod(MOD_FOOD_ATT_CAP, 30);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
	target:delMod(MOD_STR, 3);
	target:delMod(MOD_INT, -1);
	target:delMod(MOD_FOOD_ATTP, 27);
	target:delMod(MOD_FOOD_ATT_CAP, 30);
end;
