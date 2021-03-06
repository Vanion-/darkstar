-----------------------------------
-- Area: Cloister of Gales
-- NPC:  Wind Protocrystal
-- Involved in Quests: Trial by Wind, Trial Size Trial By Wind
-- @zone -361 1 -381 201
-----------------------------------
package.loaded["scripts/zones/Cloister_of_Gales/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/keyitems");
require("scripts/globals/bcnm");
require("scripts/zones/Cloister_of_Gales/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	
	if(TradeBCNM(player,player:getZone(),trade,npc))then
		return;
	end
	
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
	if(EventTriggerBCNM(player,npc))then
		return;
	else
		player:messageSpecial(PROTOCRYSTAL);					
	end
	
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("onUpdate CSID: %u",csid);
--printf("onUpdate RESULT: %u",option);
	
	if(EventUpdateBCNM(player,csid,option))then
		return;
	end
	
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("onFinish CSID: %u",csid);
--printf("onFinish RESULT: %u",option);
	
	if(EventFinishBCNM(player,csid,option))then
		return;
	end
	
end;