-----------------------------------------
-- Spell: Enwater II
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function OnMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	local effect = EFFECT_ENWATER_II;
	doEnspell(caster,target,spell,effect);
	return effect;
end;