name = " The Architect Pack"
version = "1.5-B"

description = "󰀂 This mod contains huge amount of decorative structures for Base Building!\n\Remember: They're just replicas, static structures or not?\n\n󰀅 Also includes some special structures and easter eggs, go find em' all!\n\n󰀏 Includes contents from: Shipwrecked, Hamlet, The Forge, The Gorge and exclusive contents!\n\n󰀖 Credits on the mod page!\n\󰀌 Mod Version: "..version..""
author = "The Builders Society"

api_version = 10

dst_compatible = true
all_clients_require_mod = true
client_only_mod = false

server_filter_tags = {"TBS", "TAP", "Decorations", "Base Building", "Mega Base"}

icon_atlas = "ModiconTAP.xml"
icon = "ModiconTAP.tex"

-- From The Gorge Extender --
local emptyoptions = {{description="", data=false}}
local function Title(title, hover)
	return {
		name=title,
		hover=hover, --hover does not work, as this item cannot be hovered
		options={{description = "", data = 0}},
		default=0,
	}
end

configuration_options =
{
	Title("Tweaks", "Note: Some options below may affect your gameplay if enabled."),
    {
        name = "keep_food_on_cookpot",
        label = "Keep Food on Crock Pot",
        hover = "Finished cooked food will not turn to spoiled food before harvested from crock pot.",
        options =
        {
            {description = "Enabled", 
			hover = "Food WILL NOT spoil if you leave them on crock pot.",
			data = 0},
            {description = "Disabled", 
			hover = "Food WILL spoil if you leave them on crock pot.",
			data = 1},
        },
        default = 1,
    },
	{
		name = "aged_hedges",
		label = "Aged Hedges Recipes",
		hover = "Hedges will have their aged version as craftable.",
		options =
		{
			{description = "Enabled", 
			hover = "Extra crafting for bushier version of Hedges.",
			data = 0},
			{description = "Disabled", 
			hover = "Only normal version of Hedges.",
			data = 1},
		},
		default = 1,
	},
	{
		name = "tweak_recipes",
		label = "Tweaked Recipes",
		hover = "Some recipes from the game will be tweaked for building means.",
		options =
		{
			{description = "Enabled", 
			hover = "Tweak turfs, gates, fences and wall recipes.",
			data = 0},
			{description = "Disabled", 
			hover = "Default recipes from Don't Starve Together.",
			data = 1},
		},
		default = 1,
	},
	{
		name = "hamlet_yotp",
		label = "Pig Fiesta Decorations",
		hover = "Some Hamlet Structures will have Pig Fiesta decorations!",
		options =
		{
			{description = "Enabled", 
			hover = "Structures from Hamlet WILL have Aporkalypse Festival decorations.",
			data = 0},
			{description = "Disabled", 
			hover = "Structures from Hamlet WILL NOT have Aporkalypse Festival decorations.",
			data = 1},
		},
		default = 1,
	},
	--[[ -- We don't need this actually, because she's stationary and peaceful anyway.
	{
		name = "ant_queen",
		label = "Queen Womant",
		hover = "Queen Womant will be in her throne.",
		options =
		{
			{description = "Enabled", data = 0},
			{description = "Disabled", data = 1},
		},
		default = 0,
	},
	]]--
	Title("Extras", "Note: Some options below may affect your gameplay if enabled."),
	{
		name = "coffee_hack",
		label = "Coffee",
		hover = "Enables Coffee now fully working with Warly's spices!",
		options =
		{
			{description = "Enabled", 
			hover = "Coffee Bush, Coffee Beans, Coffee and Speed!",
			data = 0},
			{description = "Disabled", 
			hover = "Craftable replica of Coffee Bush but without coffee.",
			data = 1},
		},
		default = 1,
	},
	{
		name = "packim_baggims",
		label = "Packim Baggims",
		hover = "Enables Packim Baggims as special drop of Malbatross.",
		options =
		{
			{description = "Enabled", 
			hover = "100% Drop rate from Malbatross",
			data = 1.00},
			{description = "90% Chance", 
			hover = "90% Drop rate from Malbatross",
			data = 0.90},
			{description = "80% Chance", 
			hover = "80% Drop rate from Malbatross",
			data = 0.80},
			{description = "70% Chance", 
			hover = "70% Drop rate from Malbatross",
			data = 0.10},
			{description = "60% Chance", 
			hover = "60% Drop rate from Malbatross",
			data = 0.60},
			{description = "50% Chance", 
			hover = "50% Drop rate from Malbatross",
			data = 0.50},
			{description = "40% Chance", 
			hover = "40% Drop rate from Malbatross",
			data = 0.40},
			{description = "30% Chance", 
			hover = "30% Drop rate from Malbatross",
			data = 0.30},
			{description = "20% Chance", 
			hover = "20% Drop rate from Malbatross",
			data = 0.20},
			{description = "10% Chance", 
			hover = "10% Drop rate from Malbatross",
			data = 0.10},
			{description = "Disabled", 	
			hover = "Default Malbatross loot.",
			data = 0.00},
		},
		default = 0.00,
	},
	{
		name = "colourcubes",
		label = "Colour Cubes",
		hover = "Enables CC from Hamlet or Shipwrecked.",
		options =
		{
			{description = "Disabled", 		
			hover = "Default colors of Don't Starve Together.",
			data =   0},
			{description = "Hamlet", 		
			hover = "Colors from Hamlet DLC. | Temperate | Humid | Lush | Barren",
			data =   1},
			{description = "Shipwrecked", 
			hover = "Colors from Shipwrecked DLC. | Mild | Hurricane | Monsoon | Dry",
			data =   2},
			{description = "Glermz Edition", 
			hover = "Colors of Glermz's choices. | Mild | Winter | Humid | Lush",
			data = 3},
		},
		default = 0,
	},
	{
		name = "ocean_structures",
		label = "Unimplemented Mode",
		hover = "Enable structures that are not supported at this moment! Test by your own risk.",
		options =
		{
			{description = "Enabled", 
			hover = "Enable structures that are not supported. MAY CRASH YOUR GAME!",
			data = 0},
			{description = "Disabled", 
			hover = "Disable structures that are not supported.",
			data = 1},
		},
		default = 1,
	},
}