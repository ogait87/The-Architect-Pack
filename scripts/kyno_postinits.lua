local _G = GLOBAL
local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local TECH = GLOBAL.TECH
local Ingredient = GLOBAL.Ingredient
local RECIPETABS = GLOBAL.RECIPETABS
local Recipe = GLOBAL.Recipe
local resolvefilepath = GLOBAL.resolvefilepath
local ACTIONS = GLOBAL.ACTIONS
local ActionHandler = GLOBAL.ActionHandler
local SpawnPrefab = GLOBAL.SpawnPrefab
local KENV = env

TUNING.BIRD_PERISH_TIME = 999999
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
modimport "scripts/kyno_assets"
modimport "libs/env"
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("coconut", function(inst)	
	if inst.components.perishable ~= nil then
	inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
    inst.components.perishable:StartPerishing()
    inst.components.perishable.onperishreplacement = "spoiled_food"
	end 
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("teatree_nut", function(inst)	
	if inst.components.perishable ~= nil then
	inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
    inst.components.perishable:StartPerishing()
    inst.components.perishable.onperishreplacement = "spoiled_food"
	end 
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("wall_limestone_item", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_sw.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("wall_enforcedlimestone_item", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_sw.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("wall_enforcedlimestone_land_item", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_turfs_sw_2.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("wall_pig_ruins_item", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/wall_pig_ruins_item.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_lamppost", function(inst)
	local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 0 then
    inst.AnimState:AddOverrideBuild("lamp_post2_yotp_build")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_spa", function(inst)
	local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_flower", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_general", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_deli", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_produce", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_antiquities", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_arcane", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_weapons", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_hatshop", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_bank", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_tinker", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_academy", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_cityhall", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigshop_mycityhall", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigtower", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigpalacetower", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigtower2", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pigtower3", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pighouse_city", function(inst)
    local YOTP = GetModConfigData("hamlet_yotp")
	if YOTP == 1 then
    inst.AnimState:Hide("YOTP")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function new_DoDelta(self, amount)
    local oldsection = self:GetCurrentSection()
    local newsection = (self:GetCurrentSection() + 1) % 5

	self.currentfuel = math.max(0, math.min(self.maxfuel, self.maxfuel * (newsection-0.5)/4.0) )

    if oldsection ~= newsection then
        if self.sectionfn then
            self.sectionfn(newsection, oldsection, self.inst, doer)
        end
        self.inst:PushEvent("onfueldsectionchanged", { newsection = newsection, oldsection = oldsection, doer = doer })
        if self.currentfuel <= 0 and self.depleted then
            self.depleted(self.inst)
        end
    end

    self:StopConsuming()
    self.inst:PushEvent("percentusedchange", { percent = self:GetPercent() })
end

local function InfiniteLight(inst)
	if not GLOBAL.TheWorld.ismastersim then
		return inst
	end

	inst:AddTag('eternal')
	local fueled = inst.components.fueled
	if fueled then
		fueled:StopConsuming()
		fueled.DoDelta = new_DoDelta
	end
end

AddPrefabPostInit("kyno_brazier", InfiniteLight)
AddPrefabPostInit("nightlight", InfiniteLight)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("hedge_block_item", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_ham.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("hedge_cone_item", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_ham.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("hedge_layered_item", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_ham.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("hedge_block_aged_item", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/hedge_block_aged_item.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("hedge_cone_aged_item", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/hedge_cone_aged_item.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("hedge_layered_aged_item", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/hedge_layered_aged_item.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddComponentPostInit(
    "locomotor",
    function(inst)
        local old = inst.UpdateGroundSpeedMultiplier
        inst.UpdateGroundSpeedMultiplier = function(self)
            old(self)
            if
                self.wasoncreep == false and self:FasterOnRoad() and
                    GLOBAL.TheWorld.Map:GetTileAtPoint(self.inst.Transform:GetWorldPosition()) == GROUND.COBBLEROAD
             then
                self.groundspeedmultiplier = self.fastmultiplier
            end
        end
    end
)

AddComponentPostInit(
    "locomotor",
    function(inst)
        local old2 = inst.UpdateGroundSpeedMultiplier
        inst.UpdateGroundSpeedMultiplier = function(self)
            old2(self)
            if
                self.wasoncreep == false and self:FasterOnRoad() and
                    GLOBAL.TheWorld.Map:GetTileAtPoint(self.inst.Transform:GetWorldPosition()) == GROUND.PINKSTONE
             then
                self.groundspeedmultiplier = self.fastmultiplier
            end
        end
    end
)

AddComponentPostInit(
    "locomotor",
    function(inst)
        local old3 = inst.UpdateGroundSpeedMultiplier
        inst.UpdateGroundSpeedMultiplier = function(self)
            old3(self)
            if
                self.wasoncreep == false and self:FasterOnRoad() and
                    GLOBAL.TheWorld.Map:GetTileAtPoint(self.inst.Transform:GetWorldPosition()) == GROUND.STONECITY
             then
                self.groundspeedmultiplier = self.fastmultiplier
            end
        end
    end
)

AddComponentPostInit(
    "locomotor",
    function(inst)
        local old4 = inst.UpdateGroundSpeedMultiplier
        inst.UpdateGroundSpeedMultiplier = function(self)
            old4(self)
            if
                self.wasoncreep == false and self:FasterOnRoad() and
                    GLOBAL.TheWorld.Map:GetTileAtPoint(self.inst.Transform:GetWorldPosition()) == GROUND.FORGEROAD
             then
                self.groundspeedmultiplier = self.fastmultiplier
            end
        end
    end
)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
packim_chance = GetModConfigData("packim_baggims")
GLOBAL.SetSharedLootTable("malbatross_packim",
{
	{'meat',                                1.00},
    {'meat',                                1.00},
    {'meat',                                1.00},
    {'meat',                                1.00},
    {'meat',                                1.00},
    {'meat',                                1.00},
    {'meat',                                1.00},
    {'malbatross_beak',                     1.00},
    {'mast_malbatross_item_blueprint',      1.00},
    {'malbatross_feathered_weave_blueprint',1.00},
    {'bluegem',                             1},
    {'bluegem',                             1},
    {'bluegem',                             0.3},
    {'yellowgem',                           0.05},
	{'oceanfishingbobber_malbatross_tacklesketch',1.00},
	{'chesspiece_malbatross_sketch',		1.00},
	{"packim_fishbone",						  packim_chance},
})

AddPrefabPostInit("malbatross", function(inst)
	if GLOBAL.TheWorld.ismastersim and not GLOBAL.TheSim:FindFirstEntityWithTag("packim_fishbone") then
		inst.components.lootdropper:SetChanceLootTable("malbatross_packim")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_irongate_item", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_irongate_item.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function PugaliskTrapdoor(inst)
	if not GLOBAL.TheWorld.ismastersim then
		return inst
	end
	inst:AddTag("PUGALISK_CANT_EAT")
end

local function TagMe(inst)
	if not GLOBAL.TheWorld.ismastersim then
		return inst
	end
	inst:AddTag("KeyReplica")
end

AddPrefabPostInit("chester_eyebone", PugaliskTrapdoor)
AddPrefabPostInit("packim_fishbone", PugaliskTrapdoor)
AddPrefabPostInit("glommerflower", PugaliskTrapdoor)
AddPrefabPostInit("moonrockseed", PugaliskTrapdoor)
AddPrefabPostInit("hutch_fishbowl", PugaliskTrapdoor)
AddPrefabPostInit("atrium_key", PugaliskTrapdoor)
AddPrefabPostInit("atrium_key", TagMe)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInitAny(function(inst)
	if not GLOBAL.TheWorld.ismastersim then
		return inst
	end
    if inst.components.inventoryitem ~= nil and not inst.components.tradable and not inst:HasTag("PUGALISK_CANT_EAT") then 
	inst:AddComponent("tradable")
	inst:AddTag("PUGALISK_TEST")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
GLOBAL.DEPLOYSPACING.MIN = 6
GLOBAL.DEPLOYSPACING_RADIUS[GLOBAL.DEPLOYSPACING.MIN] = .5

AddPrefabPostInit("butterfly", function(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.deployable:SetDeployMode(GLOBAL.DEPLOYMODE.PLANT)
		inst.components.deployable:SetDeploySpacing(GLOBAL.DEPLOYSPACING.MIN)
	end
end
)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
robin_chance = GetModConfigData("ro_bin")
GLOBAL.SetSharedLootTable("minotaur_robin",
{
    {"meat",        1.00},
    {"meat",        1.00},
    {"meat",        1.00},
    {"meat",        1.00},
    {"meat",        1.00},
    {"meat",        1.00},
    {"meat",        1.00},
    {"meat",        1.00},
    {"minotaurhorn",1.00},
	{"kyno_ornatechest_large_blueprint", 1.00},
	{"ro_bin_gizzard_stone", robin_chance},
})

AddPrefabPostInit("minotaur", function(inst)
	if GLOBAL.TheWorld.ismastersim and not GLOBAL.TheSim:FindFirstEntityWithTag("ro_bin_gizzard_stone") and not GLOBAL.TheSim:FindFirstEntityWithTag("ro_bin") then
		inst.components.lootdropper:SetChanceLootTable("minotaur_robin")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function InfiniteFestiveLight(inst)
	if not GLOBAL.TheWorld.ismastersim then
		return inst
	end
	inst:AddTag("festive_infinite")
	if inst.components.fueled then
		if inst.components.inventoryitem then
			local old_ondropfn = inst.components.inventoryitem.ondropfn
			inst.components.inventoryitem:SetOnDroppedFn(function(inst)
				old_ondropfn(inst)
				inst.components.fueled:StopConsuming()
			end)
		end
		inst.components.fueled:StopConsuming()
	end
end

AddPrefabPostInit("winter_ornament_light1", InfiniteFestiveLight)
AddPrefabPostInit("winter_ornament_light2", InfiniteFestiveLight)
AddPrefabPostInit("winter_ornament_light3", InfiniteFestiveLight)
AddPrefabPostInit("winter_ornament_light4", InfiniteFestiveLight)
AddPrefabPostInit("winter_ornament_light5", InfiniteFestiveLight)
AddPrefabPostInit("winter_ornament_light6", InfiniteFestiveLight)
AddPrefabPostInit("winter_ornament_light7", InfiniteFestiveLight)
AddPrefabPostInit("winter_ornament_light8", InfiniteFestiveLight)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kingfisher", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_ham.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("pigeon", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_ham.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("parrot_blue", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_ham.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("toucan_hamlet", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/toucan_hamlet.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("toucan", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_sw.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("parrot", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_sw.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("parrot_pirate", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_sw.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("seagull", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_sw.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("cormorant", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_sw.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("quagmire_pigeon", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("seagull_water", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_sw.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
local COFFEE = GetModConfigData("coffee_hack")
if COFFEE == 0 then
GLOBAL.SetSharedLootTable("dragonfly_coffee",
{
    {"dragon_scales",             1.00},
    {"dragonflyfurnace_blueprint",1.00},
    {"chesspiece_dragonfly_sketch", 1.00},
    {"lavae_egg",                 0.33},

    {"meat",             1.00},
    {"meat",             1.00},
    {"meat",             1.00},
    {"meat",             1.00},
    {"meat",             1.00},
    {"meat",             1.00},

    {"goldnugget",       1.00},
    {"goldnugget",       1.00},
    {"goldnugget",       1.00},
    {"goldnugget",       1.00},

    {"goldnugget",       0.50},
    {"goldnugget",       0.50},
    {"goldnugget",       0.50},
    {"goldnugget",       0.50},

    {"redgem",           1.00},
    {"bluegem",          1.00},
    {"purplegem",        1.00},
    {"orangegem",        1.00},
    {"yellowgem",        1.00},
    {"greengem",         1.00},

    {"redgem",           1.00},
    {"bluegem",          1.00},
    {"purplegem",        0.50},
    {"orangegem",        0.50},
    {"yellowgem",        0.50},
    {"greengem",         0.50},
	
	{"dug_coffeebush", 1.00},
	{"dug_coffeebush", 1.00},
	{"dug_coffeebush", 1.00},
	{"dug_coffeebush", 1.00},
	{"dug_coffeebush", 1.00},
	{"dug_coffeebush", 1.00},
	{"dug_coffeebush", 1.00},
	{"dug_coffeebush", 1.00},
	{"dug_coffeebush", 1.00},
	{"dug_coffeebush", 1.00},
	{"dug_coffeebush", 1.00},
	{"dug_coffeebush", 1.00},
})

	AddPrefabPostInit("dragonfly", function(inst)
		if GLOBAL.TheWorld.ismastersim then
			inst.components.lootdropper:SetChanceLootTable("dragonfly_coffee")
		end
	end)
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function rename_it(inst)
    inst.components.named:PickNewName()
end

AddPrefabPostInit("mandrake_planted", function(inst)
	inst:AddTag("_named")
	if GLOBAL.TheWorld.ismastersim then
		inst:RemoveTag("_named")
		inst:AddComponent("named")
		inst.components.named.possiblenames = { "Green Carrot", "Talking Carrot", "Mandrake" }
		inst.components.named:PickNewName()
		inst:DoPeriodicTask(5, rename_it)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_altar_seed", function(inst)
	inst:AddTag("_named")
	if GLOBAL.TheWorld.ismastersim then
		inst:RemoveTag("_named")
		inst:AddComponent("named")
		inst.components.named.possiblenames = { "Celestial Altar Orb", "They will save you" }
		inst.components.named:PickNewName()
		inst:DoPeriodicTask(5, rename_it)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_altar_idol", function(inst)
	inst:AddTag("_named")
	if GLOBAL.TheWorld.ismastersim then
		inst:RemoveTag("_named")
		inst:AddComponent("named")
		inst.components.named.possiblenames = { "Celestial Altar Idol", "Impending doom approaches" }
		inst.components.named:PickNewName()
		inst:DoPeriodicTask(5, rename_it)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_altar_glass", function(inst)
	inst:AddTag("_named")
	if GLOBAL.TheWorld.ismastersim then
		inst:RemoveTag("_named")
		inst:AddComponent("named")
		inst.components.named.possiblenames = { "Celestial Altar Base", "You don't know them" }
		inst.components.named:PickNewName()
		inst:DoPeriodicTask(5, rename_it)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_altar_crown", function(inst)
	inst:AddTag("_named")
	if GLOBAL.TheWorld.ismastersim then
		inst:RemoveTag("_named")
		inst:AddComponent("named")
		inst.components.named.possiblenames = { "Celestial Tribute", "They are coming" }
		inst.components.named:PickNewName()
		inst:DoPeriodicTask(5, rename_it)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("critterlab", function(inst)
	inst:AddTag("_named")
	if GLOBAL.TheWorld.ismastersim then
		inst:RemoveTag("_named")
		inst:AddComponent("named")
		inst.components.named.possiblenames = { "Devil's Den", "Demons Crew", "Rock Den", "Waste Your Food Here" }
		inst.components.named:PickNewName()
		inst:DoPeriodicTask(5, rename_it)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_relic_1", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_minisign_icons_2.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_relic_2", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_minisign_icons_2.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_relic_3", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_minisign_icons_2.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_relic_4", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_minisign_icons_2.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_relic_5", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_minisign_icons_2.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_pherostone", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_minisign_icons_2.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_oinc1", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_minisign_icons_2.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_oinc10", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_minisign_icons_2.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_oinc100", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_minisign_icons_2.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("cavein_boulder", function(inst)
	inst:AddTag("_named")
	if GLOBAL.TheWorld.ismastersim then
		inst:RemoveTag("_named")
		inst:AddComponent("named")
		inst.components.named.possiblenames = { "Boulder", "Antlion's Boulder", "Forever Alone Boulder" }
		inst.components.named:PickNewName()
		inst:DoPeriodicTask(5, rename_it)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[ -- Moved to Shadow Pieces!
GLOBAL.SetSharedLootTable("shadow_creature_new",
{
    { "nightmarefuel",  1.0 },
    { "nightmarefuel",  0.5 },
	{ "kyno_shadowportal_blueprint", .01 }, -- 1% Drop Chance
})

AddPrefabPostInit("crawlinghorror", function(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.lootdropper:SetChanceLootTable("shadow_creature_new")
	end
end)

AddPrefabPostInit("terrorbeak", function(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.lootdropper:SetChanceLootTable("shadow_creature_new")
	end
end)

AddPrefabPostInit("crawlingnightmare", function(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.lootdropper:SetChanceLootTable("shadow_creature_new")
	end
end)

AddPrefabPostInit("nightmarebeak", function(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.lootdropper:SetChanceLootTable("shadow_creature_new")
	end
end)
]]--
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
GLOBAL.SetSharedLootTable("moose_new",
{
    {'meat',             1.00},
    {'meat',             1.00},
    {'meat',             1.00},
    {'meat',             1.00},
    {'meat',             1.00},
    {'meat',             1.00},
    {'drumstick',        1.00},
    {'drumstick',        1.00},
    {'goose_feather',    1.00},
    {'goose_feather',    1.00},
    {'goose_feather',    1.00},
    {'goose_feather',    0.33},
    {'goose_feather',    0.33},
    {'chesspiece_moosegoose_sketch', 1.00},
	{'oceanfishingbobber_goose_tacklesketch', 1.00},
	{'kyno_goosenestegg_blueprint', 1.00},
})

AddPrefabPostInit("moose", function(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.lootdropper:SetChanceLootTable("moose_new")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
GLOBAL.SetSharedLootTable("beequeen_new",
{
    {'royal_jelly',      1.00},
    {'royal_jelly',      1.00},
    {'royal_jelly',      1.00},
    {'royal_jelly',      1.00},
    {'royal_jelly',      1.00},
    {'royal_jelly',      1.00},
    {'royal_jelly',      0.50},
    {'honeycomb',        1.00},
    {'honeycomb',        0.50},
    {'honey',            1.00},
    {'honey',            1.00},
    {'honey',            1.00},
    {'honey',            0.50},
    {'stinger',          1.00},
    {'hivehat',          1.00},
    {'bundlewrap_blueprint', 1.00},
	{'chesspiece_beequeen_sketch', 1.00},
	{'kyno_antchest_blueprint', 1.00},
})

AddPrefabPostInit("beequeen", function(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.lootdropper:SetChanceLootTable("beequeen_new")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("leif", function(inst)
	if GLOBAL.TheWorld.ismastersim then
	inst.components.lootdropper:AddChanceLoot("kyno_treeclump_blueprint", 0.10) -- 10% Drop Chance
	end
end)

AddPrefabPostInit("leif_sparse", function(inst)
	if GLOBAL.TheWorld.ismastersim then
	inst.components.lootdropper:AddChanceLoot("kyno_treeclump_blueprint", 0.10) -- 10% Drop Chance
	end
end)

AddPrefabPostInit("livingtree", function(inst)
if GLOBAL.TheWorld.ismastersim then
	inst.components.lootdropper:AddChanceLoot("kyno_truerootchest_blueprint", 0.25) -- 25% Drop Chance
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("spiderqueen", function(inst)
	if GLOBAL.TheWorld.ismastersim then
	inst.components.lootdropper:AddChanceLoot("cocoonedtree_short_blueprint", 0.33) -- 33% Drop Chance
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("deerclops", function(inst)
	if GLOBAL.TheWorld.ismastersim then
	inst.components.lootdropper:AddChanceLoot("kyno_snowman_blueprint", 1.00)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
GLOBAL.SetSharedLootTable("antlion_new",
{
    {'townportal_blueprint',    1.00},
	{'chesspiece_antlion_sketch', 1.00},

    {'townportaltalisman',  1.00},
    {'townportaltalisman',  1.00},
    {'townportaltalisman',  1.00},
    {'townportaltalisman',  1.00},
    {'townportaltalisman',  1.00},
    {'townportaltalisman',  1.00},
    {'townportaltalisman',  0.50},
    {'townportaltalisman',  0.50},

    {'meat',                1.00},
    {'meat',                1.00},
    {'meat',                1.00},
    {'meat',                1.00},

    {'rocks',               1.00},
    {'rocks',               1.00},
    {'rocks',               0.50},
    {'rocks',               0.50},
	{"piratepack",		   .01}, -- 1% Drop Chance
})

AddPrefabPostInit("antlion", function(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.lootdropper:SetChanceLootTable("antlion_new")
	end
end)
]]--
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("piratepack", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_minisign_icons.xml"
	inst.components.inventoryitem.imagename = "piratepack"
	inst.components.inventoryitem:ChangeImageName("piratepack")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
local _onequipfn
local function onequipfn(self, owner)
	owner:AddTag("bramble_resistant")
	return _onequipfn(self, owner)
end

local _onunequipfn
local function onunequipfn(self, owner)
	owner:RemoveTag("bramble_resistant")
	return _onunequipfn(self, owner)
end 

KENV.AddPrefabPostInit("armor_bramble", function(inst)
	if TheWorld.ismastersim then
	_onequipfn = inst.components.equippable.onequipfn
	inst.components.equippable.onequipfn = onequipfn
	
	_onunequipfn = inst.components.equippable.onunequipfn
	inst.components.equippable.onunequipfn = onunequipfn	
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_redflies", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_redflies.xml"
	end
end)

AddPrefabPostInit("kyno_orangeflies", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_orangeflies.xml"
	end
end)

AddPrefabPostInit("kyno_yellowflies", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_yellowflies.xml"
	end
end)

AddPrefabPostInit("kyno_greenflies", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_greenflies.xml"
	end
end)

AddPrefabPostInit("kyno_blueflies", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_blueflies.xml"
	end
end)

AddPrefabPostInit("kyno_cyanflies", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_cyanflies.xml"
	end
end)

AddPrefabPostInit("kyno_purpleflies", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_purpleflies.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- THIS IS GOING DOWN THE ROAD YOLOOOOOOOOOOOOOO
AddPrefabPostInit("forest", function(inst)
	if GLOBAL.TheWorld.ismastersim then  
		inst:AddComponent("roottrunkinventory")
	end
end)

AddPrefabPostInit("cave", function(inst)
	if GLOBAL.TheWorld.ismastersim then  
		inst:AddComponent("roottrunkinventory")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_lotus_flower", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.imagename = "lotus_flower"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_ham.xml"
	end
end)

AddPrefabPostInit("kyno_lotus_flower_cooked", function(inst)
	if inst.components.inventoryitem ~= nil then
	inst.components.inventoryitem.imagename = "lotus_flower_cooked"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_inventoryimages_ham.xml"
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Cursed Structure!!!
local function ondeathnew(inst)
	if math.random()<0.1 then
		GLOBAL.SpawnPrefab("kyno_wigfridge_blueprint").Transform:SetPosition(inst.Transform:GetWorldPosition())
	end
	inst.battleborn = 0
end

AddPrefabPostInit("wathgrithr", function(inst)
	if GLOBAL.TheWorld.ismastersim then
	inst:ListenForEvent("death", ondeathnew)
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddPrefabPostInit("kyno_oinc1", function(inst)
	if not GLOBAL.TheWorld.ismastersim then
		return inst
	end
    if inst.components.inventoryitem ~= nil and not inst.components.shelfer and not inst:HasTag("SHELFER_ITEM") then 
	inst:AddComponent("shelfer")
	inst:AddTag("SHELFER_ITEM")
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------