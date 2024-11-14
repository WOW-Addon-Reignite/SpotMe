-- [[ config ]] --

--Set the media path / 材质路径
local MediaPath = "Interface\\AddOns\\SpotMe\\media\\"
--Select your image / 材质名称
local Image = MediaPath.."NeonReticule-Blue.tga"
--image width / 宽度
local Width = 100
--image height / 高度
local Height = 100
--R,G,B,Alpha / 颜色：红，绿，蓝，透明度
local Color = {1, 1, 1, .8}
--image location / 座标：位置，锚点，x座标，y座标
--local Location = {"CENTER", UIParent, 0, 100} -- 适合箭头类材质，从头顶向下指
--local Location = {"CENTER", UIParent, 0, -40} -- 适合最远视距39+准心材质
local Location = {"CENTER", UIParent, 0, -90}  -- 适合默认视距22+准心材质
--image strata else wise known as the frame level / 材质的框体层级
local Strata = "LOW"

-- [[ end config ]] --

local frame = CreateFrame("Frame", "SpotMe", UIParent)
	local texture = frame:CreateTexture(nil, "BACKGROUND")
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
BINDING_NAME_SPOTME = binding_visibility
