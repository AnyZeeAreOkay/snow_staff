minetest.register_node("snow_staff:snow", {
	description = "Snow",
	tiles = {"default_snow.png"},
	inventory_image = "snow_staff_snowball.png",
	wield_image = "snow_staff_snowball.png",
	paramtype = "light",
	buildable_to = true,
	floodable = true,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -7 / 16, 0.5},
		},
	},
	groups = {crumbly = 3, falling_node = 1, snowy = 1, cools_lava = 1},

  on_timer = function(pos)
    local mypos = minetest.pos_to_string(pos)
    local pos = {x = pos.x, y = pos.y-20, z = pos.z}
    local radius = 30
    local nodes, count = minetest.find_nodes_in_area({x=pos.x-radius,y=pos.y-5,z=pos.z-radius},{x=pos.x+radius,y=pos.y+radius,z=pos.z+radius}, "snow_staff")
    for i in pairs(nodes) do
      minetest.set_node(nodes[i], {name = "default:air"})
    return true

    end
  end
}
)

  minetest.register_tool("snow_staff:snow_staff", {
        description = "Snow Staff",
        inventory_image = "snow_staff_snow_staff.png",
        full_punch_interval = 0.2,
        range=100,
    		liquids_pointable = true,
        on_use = function (itemstack, user, pointed_thing)
        local pos = minetest.get_pointed_thing_position(pointed_thing)
        if pointed_thing.type == "node" or pointed_thing.type == "object" then
          local node = minetest.get_node(pos)
              if pos then
              local mypos = minetest.pos_to_string(pos)
              local pos = {x = pos.x, y = pos.y+20, z = pos.z}
              local node = minetest.get_node(pos)
              if node.name == "ignore" or node.name ~= "air" == true then
              return end
              minetest.bulk_set_node({{x = pos.x, y = pos.y, z = pos.z}, {x = pos.x+1, y = pos.y, z = pos.z}, {x = pos.x+2, y = pos.y, z = pos.z}, {x = pos.x+3, y = pos.y, z = pos.z}, {x = pos.x+4, y = pos.y, z = pos.z}, {x = pos.x+5, y = pos.y, z = pos.z}, {x = pos.x+6, y = pos.y, z = pos.z}, {x = pos.x+7, y = pos.y, z = pos.z}, {x = pos.x-1, y = pos.y, z = pos.z}, {x = pos.x-2, y = pos.y, z = pos.z}, {x = pos.x-3, y = pos.y, z = pos.z}, {x = pos.x-4, y = pos.y, z = pos.z}, {x = pos.x-5, y = pos.y, z = pos.z}, {x = pos.x-6, y = pos.y, z = pos.z}, {x = pos.x-7, y = pos.y, z = pos.z}, {x = pos.x, y = pos.y, z = pos.z+1}, {x = pos.x+1, y = pos.y, z = pos.z+1}, {x = pos.x+2, y = pos.y, z = pos.z+1}, {x = pos.x+3, y = pos.y, z = pos.z+1}, {x = pos.x+4, y = pos.y, z = pos.z+1}, {x = pos.x+5, y = pos.y, z = pos.z+1}, {x = pos.x+6, y = pos.y, z = pos.z+1}, {x = pos.x+7, y = pos.y, z = pos.z+1}, {x = pos.x-1, y = pos.y, z = pos.z+1}, {x = pos.x-2, y = pos.y, z = pos.z+1}, {x = pos.x-3, y = pos.y, z = pos.z+1}, {x = pos.x-4, y = pos.y, z = pos.z+1}, {x = pos.x-5, y = pos.y, z = pos.z-1}, {x = pos.x-6, y = pos.y, z = pos.z-1}, {x = pos.x-7, y = pos.y, z = pos.z-1}, {x = pos.x+1, y = pos.y, z = pos.z-1}, {x = pos.x+2, y = pos.y, z = pos.z-1}, {x = pos.x+3, y = pos.y, z = pos.z-1}, {x = pos.x+4, y = pos.y, z = pos.z-1}, {x = pos.x+5, y = pos.y, z = pos.z-1}, {x = pos.x+6, y = pos.y, z = pos.z-1}, {x = pos.x+7, y = pos.y, z = pos.z-1}, {x = pos.x-1, y = pos.y, z = pos.z-1}, {x = pos.x-2, y = pos.y, z = pos.z-1}, {x = pos.x-3, y = pos.y, z = pos.z-1}, {x = pos.x-4, y = pos.y, z = pos.z-1}, {x = pos.x-5, y = pos.y, z = pos.z-1}, {x = pos.x-6, y = pos.y, z = pos.z-1}, {x = pos.x-7, y = pos.y, z = pos.z-1}, {x = pos.x, y = pos.y, z = pos.z-1}, {x = pos.x-5, y = pos.y, z = pos.z+1}, {x = pos.x-6, y = pos.y, z = pos.z+1}, {x = pos.x-7, y = pos.y, z = pos.z+1}, {x = pos.x, y = pos.y, z = pos.z+2}, {x = pos.x, y = pos.y, z = pos.z+2}, {x = pos.x, y = pos.y, z = pos.z+2}, {x = pos.x, y = pos.y, z = pos.z+2}, {x = pos.x, y = pos.y, z = pos.z+2}, {x = pos.x+1, y = pos.y, z = pos.z+2}, {x = pos.x+2, y = pos.y, z = pos.z+2}, {x = pos.x+3, y = pos.y, z = pos.z+2}, {x = pos.x+4, y = pos.y, z = pos.z+2}, {x = pos.x+5, y = pos.y, z = pos.z+2}, {x = pos.x+6, y = pos.y, z = pos.z+2}, {x = pos.x+7, y = pos.y, z = pos.z+2}, {x = pos.x-1, y = pos.y, z = pos.z+2}, {x = pos.x-2, y = pos.y, z = pos.z+2}, {x = pos.x-3, y = pos.y, z = pos.z+2}, {x = pos.x-4, y = pos.y, z = pos.z+2}, {x = pos.x-5, y = pos.y, z = pos.z+2}, {x = pos.x-6, y = pos.y, z = pos.z+2}, {x = pos.x-7, y = pos.y, z = pos.z+2}, {x = pos.x, y = pos.y, z = pos.z+3}, {x = pos.x-6, y = pos.y, z = pos.z+3}, {x = pos.x-5, y = pos.y, z = pos.z+3}, {x = pos.x-4, y = pos.y, z = pos.z+3}, {x = pos.x-3, y = pos.y, z = pos.z+3}, {x = pos.x-2, y = pos.y, z = pos.z+3}, {x = pos.x-1, y = pos.y, z = pos.z+3}, {x = pos.x+1, y = pos.y, z = pos.z+3}, {x = pos.x+2, y = pos.y, z = pos.z+3}, {x = pos.x+3, y = pos.y, z = pos.z+3}, {x = pos.x+4, y = pos.y, z = pos.z+3}, {x = pos.x+5, y = pos.y, z = pos.z+3}, {x = pos.x+6, y = pos.y, z = pos.z+3}, {x = pos.x, y = pos.y, z = pos.z+4}, {x = pos.x+1, y = pos.y, z = pos.z+4}, {x = pos.x+2, y = pos.y, z = pos.z+4}, {x = pos.x+3, y = pos.y, z = pos.z+4}, {x = pos.x+4, y = pos.y, z = pos.z+4}, {x = pos.x+5, y = pos.y, z = pos.z+4}, {x = pos.x+6, y = pos.y, z = pos.z+4}, {x = pos.x-6, y = pos.y, z = pos.z+4}, {x = pos.x-5, y = pos.y, z = pos.z+4}, {x = pos.x-4, y = pos.y, z = pos.z+4}, {x = pos.x-3, y = pos.y, z = pos.z+4}, {x = pos.x-2, y = pos.y, z = pos.z+4}, {x = pos.x-1, y = pos.y, z = pos.z+4}, {x = pos.x-5, y = pos.y, z = pos.z+5}, {x = pos.x-4, y = pos.y, z = pos.z+5}, {x = pos.x-3, y = pos.y, z = pos.z+5}, {x = pos.x-2, y = pos.y, z = pos.z+5}, {x = pos.x-1, y = pos.y, z = pos.z+5}, {x = pos.x+1, y = pos.y, z = pos.z+5}, {x = pos.x+2, y = pos.y, z = pos.z+5}, {x = pos.x+3, y = pos.y, z = pos.z+5}, {x = pos.x+4, y = pos.y, z = pos.z+5}, {x = pos.x+5, y = pos.y, z = pos.z+5}, {x = pos.x, y = pos.y, z = pos.z+5}, {x = pos.x, y = pos.y, z = pos.z+6}, {x = pos.x+1, y = pos.y, z = pos.z+6}, {x = pos.x-1, y = pos.y, z = pos.z+6}, {x = pos.x+2, y = pos.y, z = pos.z+6}, {x = pos.x-2, y = pos.y, z = pos.z+6}, {x = pos.x+3, y = pos.y, z = pos.z+6}, {x = pos.x-3, y = pos.y, z = pos.z+6}, {x = pos.x+4, y = pos.y, z = pos.z+6}, {x = pos.x-4, y = pos.y, z = pos.z+6}, {x = pos.x, y = pos.y, z = pos.z+7}, {x = pos.x+1, y = pos.y, z = pos.z+7}, {x = pos.x-1, y = pos.y, z = pos.z+7}, {x = pos.x+2, y = pos.y, z = pos.z+7}, {x = pos.x-2, y = pos.y, z = pos.z+7}, {x = pos.x, y = pos.y, z = pos.z-2}, {x = pos.x-1, y = pos.y, z = pos.z-2}, {x = pos.x+1, y = pos.y, z = pos.z-2}, {x = pos.x-2, y = pos.y, z = pos.z-2}, {x = pos.x+2, y = pos.y, z = pos.z-2}, {x = pos.x-3, y = pos.y, z = pos.z-2}, {x = pos.x+3, y = pos.y, z = pos.z-2}, {x = pos.x-4, y = pos.y, z = pos.z-2}, {x = pos.x+4, y = pos.y, z = pos.z-2}, {x = pos.x-5, y = pos.y, z = pos.z-2}, {x = pos.x+5, y = pos.y, z = pos.z-2}, {x = pos.x-6, y = pos.y, z = pos.z-2}, {x = pos.x+6, y = pos.y, z = pos.z-2}, {x = pos.x-7, y = pos.y, z = pos.z-2}, {x = pos.x+7, y = pos.y, z = pos.z-2}, {x = pos.x, y = pos.y, z = pos.z-3}, {x = pos.x-1, y = pos.y, z = pos.z-3}, {x = pos.x+1, y = pos.y, z = pos.z-3}, {x = pos.x-2, y = pos.y, z = pos.z-3}, {x = pos.x+2, y = pos.y, z = pos.z-3}, {x = pos.x-3, y = pos.y, z = pos.z-3}, {x = pos.x+3, y = pos.y, z = pos.z-3}, {x = pos.x-4, y = pos.y, z = pos.z-3}, {x = pos.x+4, y = pos.y, z = pos.z-3}, {x = pos.x-5, y = pos.y, z = pos.z-3}, {x = pos.x+5, y = pos.y, z = pos.z-3}, {x = pos.x-6, y = pos.y, z = pos.z-3}, {x = pos.x+6, y = pos.y, z = pos.z-3}, {x = pos.x, y = pos.y, z = pos.z-4}, {x = pos.x-1, y = pos.y, z = pos.z-4}, {x = pos.x+1, y = pos.y, z = pos.z-4}, {x = pos.x-2, y = pos.y, z = pos.z-4}, {x = pos.x+2, y = pos.y, z = pos.z-4}, {x = pos.x-3, y = pos.y, z = pos.z-4}, {x = pos.x+3, y = pos.y, z = pos.z-4}, {x = pos.x-4, y = pos.y, z = pos.z-4}, {x = pos.x+4, y = pos.y, z = pos.z-4}, {x = pos.x-5, y = pos.y, z = pos.z-4}, {x = pos.x+5, y = pos.y, z = pos.z-4}, {x = pos.x-6, y = pos.y, z = pos.z-4}, {x = pos.x+6, y = pos.y, z = pos.z-4}, {x = pos.x, y = pos.y, z = pos.z-5}, {x = pos.x-1, y = pos.y, z = pos.z-5}, {x = pos.x+1, y = pos.y, z = pos.z-5}, {x = pos.x-2, y = pos.y, z = pos.z-5}, {x = pos.x+2, y = pos.y, z = pos.z-5}, {x = pos.x-3, y = pos.y, z = pos.z-5}, {x = pos.x+3, y = pos.y, z = pos.z-5}, {x = pos.x-4, y = pos.y, z = pos.z-5}, {x = pos.x+4, y = pos.y, z = pos.z-5}, {x = pos.x-5, y = pos.y, z = pos.z-5}, {x = pos.x+5, y = pos.y, z = pos.z-5}, {x = pos.x, y = pos.y, z = pos.z-6}, {x = pos.x-1, y = pos.y, z = pos.z-6}, {x = pos.x+1, y = pos.y, z = pos.z-6}, {x = pos.x-2, y = pos.y, z = pos.z-6}, {x = pos.x+2, y = pos.y, z = pos.z-6}, {x = pos.x-3, y = pos.y, z = pos.z-6}, {x = pos.x+3, y = pos.y, z = pos.z-6}, {x = pos.x-4, y = pos.y, z = pos.z-6}, {x = pos.x+4, y = pos.y, z = pos.z-6}, {x = pos.x, y = pos.y, z = pos.z-7}, {x = pos.x-1, y = pos.y, z = pos.z-7}, {x = pos.x+1, y = pos.y, z = pos.z-7}, {x = pos.x-2, y = pos.y, z = pos.z-7}, {x = pos.x+2, y = pos.y, z = pos.z-7}},  {name="snow_staff:snow"})
              minetest.check_for_falling(pos)
end
end
end
}
)
