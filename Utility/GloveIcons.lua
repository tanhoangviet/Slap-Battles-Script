local GloveIcon = {
	Farm = SolarIcon.Mastery,
	SpringDefense = SolarIcon.Local,
	ThanosTycoon = SolarIcon.Combat,
	PhaseWormhole = SolarIcon.Misc,
	RunBrick = SolarIcon.Mastery,
	HelpSetup = SolarIcon.Help,
	HelpAB = SolarIcon.Help,
	HelpVS = SolarIcon.Combat,
	HelpTM = SolarIcon.Misc,
	HelpQuick = SolarIcon.Mastery,
	GloveSpam = SolarIcon.GlovesOptional,
	GloveTarget = SolarIcon.Combat,
	GloveCollect = SolarIcon.Misc,
	GloveUtility = SolarIcon.Settings,
}

local ImageManager = Library and Library.ImageManager
local CanUseRemoteIcons = ImageManager
	and ImageManager.AddAsset
	and ImageManager.GetAsset
	and ExecutorSupport
	and ExecutorSupport.custom_asset

local function AddGloveAsset(Key, AssetName, Url)
	if not CanUseRemoteIcons then
		return
	end

	pcall(ImageManager.AddAsset, AssetName, 0, Url)
	local Asset = ImageManager.GetAsset(AssetName)
	if Asset and Asset ~= "rbxassetid://0" then
		GloveIcon[Key] = Asset
	end
end

if Loading then
	Loading:SetCurrentStep(4)
	Loading:SetDescription(
		CanUseRemoteIcons and "Downloading glove tab icons..."
			or "Executor custom images unsupported, using fallback icons."
	)
end

AddGloveAsset(
	"Farm",
	"SlapReplicaIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/5/51/ReplicaHoldingUpdated.png/revision/latest/scale-to-width-down/128?cb=20220921035241"
)
AddGloveAsset(
	"SpringDefense",
	"SlapSpringIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/5/5e/Screenshot_20260403-151033.jpg/revision/latest/scale-to-width-down/128?cb=20260403210743"
)
AddGloveAsset(
	"ThanosTycoon",
	"SlapThanosIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/f/f6/Thanosglove.JPG/revision/latest/scale-to-width-down/128?cb=20230314010648"
)
AddGloveAsset(
	"PhaseWormhole",
	"SlapPhaseIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/e/e2/Phase.gif/revision/latest/scale-to-width-down/128?cb=20230924142944"
)
AddGloveAsset(
	"RunBrick",
	"SlapRunIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/4/48/RunHeld.jpg/revision/latest/scale-to-width-down/128?cb=20240809185110"
)
AddGloveAsset(
	"HelpSetup",
	"SlapDefaultIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/4/48/Defaultheld.png/revision/latest/scale-to-width-down/128?cb=20230702234707"
)
AddGloveAsset(
	"HelpAB",
	"SlapAcrobatIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/e/e0/Player_holding_acrobat.png/revision/latest/scale-to-width-down/128?cb=20230314010502"
)
AddGloveAsset(
	"HelpVS",
	"SlapVoodooIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/b/b3/VoodooEquipped.png/revision/latest/scale-to-width-down/128?cb=20230712113411"
)
AddGloveAsset(
	"HelpTM",
	"SlapTycoonIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/e/ee/Tycoonheld.png/revision/latest/scale-to-width-down/128?cb=20251123203723"
)
AddGloveAsset(
	"HelpQuick",
	"SlapBrickIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/5/56/BrickUpdated.png/revision/latest/scale-to-width-down/128?cb=20240809184630"
)
AddGloveAsset(
	"GloveSpam",
	"SlapGoldenIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/5/54/Golden.jpeg/revision/latest/scale-to-width-down/128?cb=20230314005655"
)
AddGloveAsset(
	"GloveTarget",
	"SlapStalkerIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/e/e7/Stalker_Glove_Equipped.png/revision/latest/scale-to-width-down/128?cb=20241206162115"
)
AddGloveAsset(
	"GloveCollect",
	"SlapGlovelIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/c/ce/Glovel_Glove.png/revision/latest/scale-to-width-down/128?cb=20240323200014"
)
AddGloveAsset(
	"GloveUtility",
	"SlapMaceIcon",
	"https://static.wikia.nocookie.net/roblox-slap-battles/images/b/b5/MaceHolding.png/revision/latest/scale-to-width-down/128?cb=20241227163801"
)

getgenv().SlapGloveIcon = GloveIcon
