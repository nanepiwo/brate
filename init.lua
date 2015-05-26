minetest.register_node("brate:rate", {
  description = "Building Rater",
  tiles = {"brate_rate.png", "brate_rate_side.png", "brate_rate_side.png",
  "brate_rate_side.png", "brate_rate_side.png", "brate_rate_side.png" },
  paramtype2 = "facedir",
	groups = {cracky=2},
	is_ground_content = false,
	after_place_node  = function(pos, placer, itemstack)
	local meta = minetest.get_meta(pos);
        meta:set_string("infotext",       "Building Rater (unconfigured)");
        meta:set_string("building_name",   "");
        meta:set_string("builder",          placer:get_player_name() );
        -- request initinal data
        meta:set_string("formspec", 
                            "size[12,10]"..
                            "field[0.3,5.6;6,0.7;station_name;Name of this building:;]"..
                            "field[0.3,7.6;6,0.7;builder;Built by:;]"..
                            "button_exit[6.3,6.2;1.7,0.7;station_set;Done]" );
    end,
	on_rightclick = function(pos, node, clicker)
    brate.show_rater_formspec( clicker, pos );
	end,
	
minetest.register_craft({
	ouptut = "brate:rate",
	recipe = brate.rate_recipe,
	)}
