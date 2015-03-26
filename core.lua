--config
local MediaPath = "Interface\\Addons\\SpotMe\\media\\" --Set the media path
local Image = MediaPath.."redarrow" --Select your image
local Width = 100 --image width
local Height = 100 --image height
local Color = {1,1,1,.5} --R,G,B,Alpha
local Location = {"CENTER", UIParent, 0, 100} --image location
local Strata = "LOW" --image strata else wise known as the frame level

--end config
local frame = CreateFrame("Frame", "SpotMe", UIParent)
local texture = frame:CreateTexture(nil, "BACKROUND")
texture:SetAllPoints()
texture:SetTexture(Image)
texture:SetVertexColor(unpack(Color))
frame:SetWidth(Width)
frame:SetHeight(Height)
frame:SetPoint(unpack(Location))
frame:SetFrameStrata(Strata)

frame:Hide()
function frame:ToggleVisibility()
	frame:SetShown(not frame:IsShown())
end

-- Keybindings
BINDING_HEADER_SPOTME = "SpotMe"
BINDING_NAME_SPOTME_VISIBILITY = binding_visibility