local BestInSlot, L = unpack(select(2,...))
local isRegistered = false
local BiSLDB = LibStub("LibDataBroker-1.1"):NewDataObject("BestInSlotFearless", {
  type = "launcher",
  text = "Best in Slot Fearless",
  icon = "Interface\\Icons\\Achievement_ChallengeMode_Gold",
  OnTooltipShow = function(tooltip)
    tooltip:AddLine("Best in Slot Fearless")
    tooltip:AddLine(("%s%s: %s%s|r"):format(BestInSlot.colorHighlight, L["Click"], BestInSlot.colorNormal, L["Show the GUI"]))
  end
})
local minimapIcon = LibStub("LibDBIcon-1.0")

function BiSLDB:OnClick(button, down)
  BestInSlot:ToggleFrame()
end

function BestInSlot:RegisterMinimapIcon()
  minimapIcon:Register("BestInSlotFearless", BiSLDB, BestInSlot.db.profile.minimap)
  isRegistered = true
end

function BestInSlot:MiniMapButtonVisible(bool)
  if bool then
    if not isRegistered then
      self:RegisterMinimapIcon()
    end
    minimapIcon:Show("BestInSlotFearless")
  else
    if not isRegistered then return end
    minimapIcon:Hide("BestInSlotFearless")
  end
end

function BestInSlot:MiniMapButtonHideShow()
  BestInSlot.db.char.options.minimapButton = not BestInSlot.db.char.options.minimapButton
  BestInSlot:MiniMapButtonVisible(BestInSlot.db.char.options.minimapButton)
end
