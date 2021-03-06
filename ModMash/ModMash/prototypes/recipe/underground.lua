﻿require("prototypes.scripts.defines") 
local underground_accumulator  = modmash.defines.names.underground_accumulator
local underground_access  = modmash.defines.names.underground_access
local underground_access2  = modmash.defines.names.underground_access2

data:extend(
{
    {
		type = "recipe",
		name = underground_access,
		energy_required = 10,
		enabled = true,
		ingredients =
		{
			{"assembling-machine-burner", 1},
			{"steel-chest", 5},
			{"pipe", 10},
		},
		result = underground_access
	},
	{
		type = "recipe",
		name = underground_access2,
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{underground_access, 1},
			{"titanium-plate", 10},
		},
		result = underground_access2
	},
	{
		type = "recipe",
		name = underground_accumulator,
		energy_required = 10,
		enabled = false,
		ingredients =
		{
		  {"iron-plate", 10},
		  {"battery", 5}
		},
		result = underground_accumulator
	},{
		type = "recipe",
		name = "recharged-battery-cell",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
		  {"used-battery-cell", 1},
		  {"battery", 2}
		},
		result = "battery-cell"
	},{
		type = "recipe",
		name = "battery-cell",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
		  {"iron-plate", 10},
		  {"battery", 5}
		},
		result = "battery-cell"
	},{
		type = "recipe",
		name = "used-battery-cell",  --not visible but required for recycling
		energy_required = 10,
		enabled = false,
		ingredients =
		{
		  {"iron-plate", 10},
		  {"battery", 5}
		},
		result = "used-battery-cell"
	}
})
