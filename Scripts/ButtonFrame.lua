local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")

frame:SetScript("OnEvent", function(self, eventName, ...)
    if eventName == "PLAYER_LOGIN" then
        for _, chatFrameName in pairs(CHAT_FRAMES) do
            local chatFrame = _G[chatFrameName]
            local buttonFrame = chatFrame.buttonFrame
            buttonFrame:Hide()
            buttonFrame:SetScript("OnShow", buttonFrame.Hide)
        end
    end
end)