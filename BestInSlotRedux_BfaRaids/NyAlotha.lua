local NyAlotha = LibStub("AceAddon-3.0"):GetAddon("BestInSlotRedux"):NewModule("NyAlotha")
local nyaltoha = "nyaltoha"
function NyAlotha:OnEnable()
  local L = LibStub("AceLocale-3.0"):GetLocale("BestInSlotRedux")

  local name = "Ny'alotha, the Waking City"
  name = C_Map.GetMapInfo(1580).name
  
  self:RegisterExpansion("Battle for Azeroth", EXPANSION_NAME7)
  self:RegisterRaidTier("Battle for Azeroth", 80202, name, PLAYER_DIFFICULTY1, PLAYER_DIFFICULTY2, PLAYER_DIFFICULTY6)
  self:RegisterRaidInstance(80202, nyaltoha, name, {
    bonusids = {
      [1] = {3524},
      [2] = {3524},
      [3] = {3524}
    },
    difficultyconversion = {
      [1] = 3, --Raid Normal
      [2] = 5, --Raid Heroic
      [3] = 6, --Raid Mythic
    }
  })
  --------------------------------------------------
  ----- Ny'alotha, the Waking City
  --------------------------------------------------
  

  -----------------------------------
  ----- Wrathion, the Black Emporer
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2368)
  local lootTable = {
    172185,
    172199,
    174105,
    174170,
    174153,
    174125,
    174139,
    174044
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
  
  -----------------------------------
  ----- Maut
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2365)
  local lootTable = {
    172191,
    172200,
    174132,
    174152,
    174124,
    174155,
    174172,
    174141,
    173944,
    173940,
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
  
  -----------------------------------
  ----- The Prophet Skitra
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2369)
  local lootTable = {
    172201,
    172193,
    174165,
    174119,
    174138,
    174143,
    174173,
    174123,
    174157,
    174060,
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
  
  -----------------------------------
  ----- Dark Inquisitor Xanesh
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2377)
  local lootTable = {
    172196,
    172190,
    174169,
    174126,
    174156,
    174140,
    174121,
    173943,
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
  
  -----------------------------------
  ----- The Hivermind
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2372)
  local lootTable = {
    174106,
    172192,
    174154,
    174122,
    174137,
    174171,
    174530,
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
  
  -----------------------------------
  ----- Shad'har the Insatiable
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2367)
  local lootTable = {
    172186,
    174107,
    174177,
    174145,
    174162,
    174130,
    174531,
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
 
  -----------------------------------
  ----- Drest'agath
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2373)
  local lootTable = {
    172195,
    172198,
    174146,
    174174,
    174159,
    174532,
    173946,
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
  
  -----------------------------------
  ----- Il'gyhnoth, Corruption Reborn
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2374)
  local lootTable = {
    172189,
    172188,
    174116,
    174163,
    174135,
    174150,
    174161,
    174129,
    174142,
    174176,
    174180
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
  
  -----------------------------------
  ----- Vexiona
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2370)
  local lootTable = {
    172194,
    174148,
    174120,
    174164,
    174131,
    174160
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
  
  -----------------------------------
  ----- Ra-den the Despoiled
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2364)
  local lootTable = {
    172228,
    172197,
    174134,
    174149,
    174168,
    174115,
    174175,
    174128,
    174500,
    174528
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
  
  -----------------------------------
  ----- Carapace of N'Zoth
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2366)
  local lootTable = {
    174109,
    172227,
    174108,
    174151,
    174166,
    174117,
    174136,
    174178,
    174158,
    174127,
    174144
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
  
  -----------------------------------
  ----- N'Zoth the Corruptor
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2375)
  local lootTable = {
    172187,
    172229,
    174167,
    174118,
    174133,
    174147,
    174533,
    174277,
    174103
  }
  self:RegisterBossLoot(nyaltoha, lootTable, bossName)
  

end 

function NyAlotha:InitializeZoneDetect(ZoneDetect)
  ZoneDetect:RegisterMapID(1580, nyaltoha)
  ZoneDetect:RegisterNPCID(156818, nyaltoha, 1) --Wrathion, the Black Emporer
  ZoneDetect:RegisterNPCID(156523, nyaltoha, 2) --Maut
  ZoneDetect:RegisterNPCID(161901, nyaltoha, 3) --The Prophet Skitra
  ZoneDetect:RegisterNPCID(160229, nyaltoha, 4) --Dark Inquisitor Xanesh
  ZoneDetect:RegisterNPCID(157253, nyaltoha, 5) --The Hivermind
  ZoneDetect:RegisterNPCID(157231, nyaltoha, 6) --Shad'har the Insatiable
  ZoneDetect:RegisterNPCID(157602, nyaltoha, 7) --Drest'agath
  ZoneDetect:RegisterNPCID(158328, nyaltoha, 8) --Il'gyhnoth, Corruption Reborn
  ZoneDetect:RegisterNPCID(157354, nyaltoha, 9) --Vexiona
  ZoneDetect:RegisterNPCID(156866, nyaltoha, 10) --Ra-den the Despoiled
  ZoneDetect:RegisterNPCID(157439, nyaltoha, 11) --Carapace of N'Zoth
  ZoneDetect:RegisterNPCID(158041, nyaltoha, 12) --N'Zoth The Corruptor
end
