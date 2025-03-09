local GetMouseFoci = GetMouseFoci

hooksecurefunc("GameTooltip_SetDefaultAnchor", function(tooltip, parent)
    local frame = GetMouseFoci()[1]

    if frame == MainMenuMicroButton then
        tooltip:SetOwner(MainMenuMicroButton, "ANCHOR_TOP")
        return
    end

    if frame == MainStatusTrackingBarContainer.bars[4] then
        tooltip:SetOwner(MainStatusTrackingBarContainer.bars[4], "ANCHOR_CURSOR")
        return
    end
end)