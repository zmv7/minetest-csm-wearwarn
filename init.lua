minetest.register_on_punchnode(function(pos,node)
	local witem = minetest.localplayer:get_wielded_item()
	local wear = witem and witem:get_wear()
	if wear and wear > 60000 then
		minetest.display_chat_message(minetest.colorize("#ff0","/!\\ High tool hear warning /!\\"))
	end
end)
