more_mese_post_light = {}
function S(x) return x end
function more_mese_post_light.register_mesepost(name, def)
	minetest.register_craft({
		output = name .. " 4",
		recipe = {
			{'', 'default:glass', ''},
			{'default:mese_crystal', 'default:mese_crystal', 'default:mese_crystal'},
			{'', def.material, ''},
		}
	})

	local post_texture = def.texture .. "^more_mese_post_light_mese_post_light_side.png^[makealpha:0,0,0"
	local post_texture_dark = def.texture .. "^more_mese_post_light_mese_post_light_side_dark.png^[makealpha:0,0,0"
	-- Allow almost everything to be overridden
	local default_fields = {
		wield_image = post_texture,
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-2 / 16, -8 / 16, -2 / 16, 2 / 16, 8 / 16, 2 / 16},
			},
		},
		paramtype = "light",
		tiles = {def.texture, def.texture, post_texture_dark, post_texture_dark, post_texture, post_texture},
		light_source = LIGHT_MAX,
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		sounds = default.node_sound_wood_defaults(),
	}
	for k, v in pairs(default_fields) do
		if def[k] == nil then
			def[k] = v
		end
	end

	def.texture = nil
	def.material = nil

	minetest.register_node(name, def)
end

more_mese_post_light.register_mesepost(":default:mese_post_light_acacia", {
	description = S("Acacia Wood Mese Post Light"),
	texture = "default_fence_acacia_wood.png",
	material = "default:acacia_wood",
})

more_mese_post_light.register_mesepost(":default:mese_post_light_junglewood", {
	description = S("Jungle Wood Mese Post Light"),
	texture = "default_fence_junglewood.png",
	material = "default:junglewood",
})

more_mese_post_light.register_mesepost(":default:mese_post_light_pine_wood", {
	description = S("Pine Wood Mese Post Light"),
	texture = "default_fence_pine_wood.png",
	material = "default:pine_wood",
})

more_mese_post_light.register_mesepost(":default:mese_post_light_aspen_wood", {
	description = S("Aspen Wood Mese Post Light"),
	texture = "default_fence_aspen_wood.png",
	material = "default:aspen_wood",
})

more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_steelblock", {
	description = S("Steel Mese Post Light"),
	texture = "default_steel_block.png",
	material = "default:steel_ingot",
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
})

more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_grass", {
	description = S("Grass Mese Post Light"),
	texture = "default_grass.png",
	material = "group:grass",
	groups = {snappy = 3, flora = 1, attached_node = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
})

more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_ice", {
	description = S("Ice Mese Post Light"),
	texture = "default_ice.png",
	material = "default:ice",
	groups = {cracky = 3, slippery = 3},
	sounds = default.node_sound_glass_defaults(),
})
if minetest.get_modpath("ethereal") then
	more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_sakura_wood", {
		description = S("Sakura Wood Mese Post Light"),
		texture = "ethereal_sakura_wood.png",
		material = "ethereal:sakura_wood",
	})
	more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_willow_wood", {
		description = S("Willow Wood Mese Post Light"),
		texture = "willow_wood.png",
		material = "ethereal:willow_wood",
	})
	more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_redwood_wood", {
		description = S("Redwood Wood Mese Post Light"),
		texture = "redwood_wood.png",
		material = "ethereal:redwood_wood",
	})
	more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_frost_wood", {
		description = S("Frost Wood Mese Post Light"),
		texture = "frost_wood.png",
		material = "ethereal:frost_wood",
	})
	more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_yellow_wood", {
		description = S("Healing Wood Mese Post Light"),
		texture = "yellow_wood.png",
		material = "ethereal:yellow_wood",
	})
	more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_palm_wood", {
		description = S("Palm Wood Mese Post Light"),
		texture = "moretrees_palm_wood.png",
		material = "ethereal:palm_wood",
	})
	more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_banana_wood", {
		description = S("Banana Wood Mese Post Light"),
		texture = "banana_wood.png",
		material = "ethereal:banana_wood",
	})
	more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_scorched_tree", {
		description = S("Scorched Tree Mese Post Light"),
		texture = "scorched_tree.png",
		material = "ethereal:scorched_tree",
	})
	more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_mushroom_trunk", {
		description = S("Mushroom Mese Post Light"),
		texture = "mushroom_trunk.png",
		material = "ethereal:mushroom_trunk",
	})
	more_mese_post_light.register_mesepost("more_mese_post_light:mese_post_light_birch_wood", {
		description = S("Brich Wood Post Light"),
		texture = "moretrees_birch_wood.png",
		material = "ethereal:birch_wood",
	})
end


