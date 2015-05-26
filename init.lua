minetest.register_node("brate:rate", {
  description = "Building Rater",
  tiles = {"brate_rate.png", "brate_rate_side.png", "brate_rate_side.png",
  "brate_rate_side.png", "brate_rate_side.png", "brate_rate_side.png" },
  paramtype2 = "facedir",
	groups = {cracky=2},
	is_ground_content = false,
	on_rightclick = function(pos, node, clicker)
    brate.show_rater_formspec( clicker, pos );
	end,
	
