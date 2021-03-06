---getMaxValues
---@return table
---@public
function MOD_Skin:getMaxValues()
    local playerPed<const> = PlayerPedId()
    local character <const> = MOD_Skin.character
    local data = {
        ["sex"] = 1,
        ["face"] = 45,
        ["skin"] = 45,
        ["age_1"] = GetNumHeadOverlayValues(3) - 1,
        ["age_2"] = 10,
        ["beard_1"] = GetNumHeadOverlayValues(1) - 1,
        ["beard_2"] = 10,
        ["beard_3"] = GetNumHairColors() - 1,
        ["beard_4"] = GetNumHairColors() - 1,
        ["hair_1"] = GetNumberOfPedDrawableVariations(playerPed, 2) - 1,
        ["hair_2"] = GetNumberOfPedTextureVariations(playerPed, 2, character["hair_1"]) - 1,
        ["hair_color_1"] = GetNumHairColors() - 1,
        ["hair_color_2"] = GetNumHairColors() - 1,
        ["eye_color"] = 31,
        ["eyebrows_1"] = GetNumHeadOverlayValues(2) - 1,
        ["eyebrows_2"] = 10,
        ["eyebrows_3"] = GetNumHairColors() - 1,
        ["eyebrows_4"] = GetNumHairColors() - 1,
        ["makeup_1"] = GetNumHeadOverlayValues(4) - 1,
        ["makeup_2"] = 10,
        ["makeup_3"] = GetNumHairColors() - 1,
        ["makeup_4"] = GetNumHairColors() - 1,
        ["lipstick_1"] = GetNumHeadOverlayValues(8) - 1,
        ["lipstick_2"] = 10,
        ["lipstick_3"] = GetNumHairColors() - 1,
        ["lipstick_4"] = GetNumHairColors() - 1,
        ["blemishes_1"] = GetNumHeadOverlayValues(0) - 1,
        ["blemishes_2"] = 10,
        ["blush_1"] = GetNumHeadOverlayValues(5) - 1,
        ["blush_2"] = 10,
        ["blush_3"] = GetNumHairColors() - 1,
        ["complexion_1"] = GetNumHeadOverlayValues(6) - 1,
        ["complexion_2"] = 10,
        ["sun_1"] = GetNumHeadOverlayValues(7) - 1,
        ["sun_2"] = 10,
        ["moles_1"] = GetNumHeadOverlayValues(9) - 1,
        ["moles_2"] = 10,
        ["chest_1"] = GetNumHeadOverlayValues(10) - 1,
        ["chest_2"] = 10,
        ["chest_3"] = GetNumHairColors() - 1,
        ["bodyb_1"] = GetNumHeadOverlayValues(11) - 1,
        ["bodyb_2"] = 10,
        ["ears_1"] = GetNumberOfPedPropDrawableVariations(playerPed, 1) - 1,
        ["ears_2"] = GetNumberOfPedPropTextureVariations(playerPed, 1, character["ears_1"] - 1),
        ["tshirt_1"] = GetNumberOfPedDrawableVariations(playerPed, 8) - 1,
        ["tshirt_2"] = GetNumberOfPedTextureVariations(playerPed, 8, character["tshirt_1"]) - 1,
        ["torso_1"] = GetNumberOfPedDrawableVariations(playerPed, 11) - 1,
        ["torso_2"] = GetNumberOfPedTextureVariations(playerPed, 11, character["torso_1"]) - 1,
        ["decals_1"] = GetNumberOfPedDrawableVariations(playerPed, 10) - 1,
        ["decals_2"] = GetNumberOfPedTextureVariations(playerPed, 10, character["decals_1"]) - 1,
        ["arms"] = GetNumberOfPedDrawableVariations(playerPed, 3) - 1,
        ["arms_2"] = 10,
        ["pants_1"] = GetNumberOfPedDrawableVariations(playerPed, 4) - 1,
        ["pants_2"] = GetNumberOfPedTextureVariations(playerPed, 4, character["pants_1"]) - 1,
        ["shoes_1"] = GetNumberOfPedDrawableVariations(playerPed, 6) - 1,
        ["shoes_2"] = GetNumberOfPedTextureVariations(playerPed, 6, character["shoes_1"]) - 1,
        ["mask_1"] = GetNumberOfPedDrawableVariations(playerPed, 1) - 1,
        ["mask_2"] = GetNumberOfPedTextureVariations(playerPed, 1, character["mask_1"]) - 1,
        ["bproof_1"] = GetNumberOfPedDrawableVariations(playerPed, 9) - 1,
        ["bproof_2"] = GetNumberOfPedTextureVariations(playerPed, 9, character["bproof_1"]) - 1,
        ["chain_1"] = GetNumberOfPedDrawableVariations(playerPed, 7) - 1,
        ["chain_2"] = GetNumberOfPedTextureVariations(playerPed, 7, character["chain_1"]) - 1,
        ["bags_1"] = GetNumberOfPedDrawableVariations(playerPed, 5) - 1,
        ["bags_2"] = GetNumberOfPedTextureVariations(playerPed, 5, character["bags_1"]) - 1,
        ["helmet_1"] = GetNumberOfPedPropDrawableVariations(playerPed, 0) - 1,
        ["helmet_2"] = GetNumberOfPedPropTextureVariations(playerPed, 0, character["helmet_1"]) - 1,
        ["glasses_1"] = GetNumberOfPedPropDrawableVariations(playerPed, 1) - 1,
        ["glasses_2"] = GetNumberOfPedPropTextureVariations(playerPed, 1, character["glasses_1"] - 1),
        ["watches_1"] = GetNumberOfPedPropDrawableVariations(playerPed, 6) - 1,
        ["watches_2"] = GetNumberOfPedPropTextureVariations(playerPed, 6, character["watches_1"]) - 1,
        ["bracelets_1"] = GetNumberOfPedPropDrawableVariations(playerPed, 7) - 1,
        ["bracelets_2"] = GetNumberOfPedPropTextureVariations(playerPed, 7, character["bracelets_1"] - 1)
    }
    return (data)
end