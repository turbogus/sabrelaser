--PAr turbogus et gros coup de main par Mg

--sabre laser vert
minetest.register_craft({
	output = 'sabrelaser:sabrelaservert',
	recipe = {
		{'sabrelaser:lamevert'},
		{'sabrelaser:electronique'},
		{'sabrelaser:manche'},
	}
})

minetest.register_tool("sabrelaser:sabrelaservert", {
	description = "Sabre laser vert",
	inventory_image = "sabrelaservert.png",
	
	light_source = 5,
	
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=10},
			
	}

})


--sabre laser bleu
minetest.register_craft({
	output = 'sabrelaser:sabrelaserbleu',
	recipe = {
		{'sabrelaser:lamebleu'},
		{'sabrelaser:electronique'},
		{'sabrelaser:manche'},
	}
})

minetest.register_tool("sabrelaser:sabrelaserbleu", {
	description = "Sabre laser bleu",
	inventory_image = "sabrelaserbleu.png",
	
	light_source = 5,
	
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=10},
			
	}

})



--sabre laser rouge
minetest.register_craft({
	output = 'sabrelaser:sabrelaserrouge',
	recipe = {
		{'sabrelaser:lamerouge'},
		{'sabrelaser:electronique'},
		{'sabrelaser:manche'},
	}
})
minetest.register_tool("sabrelaser:sabrelaserrouge", {
	description = "Sabre laser rouge",
	inventory_image = "sabrelaserrouge.png",
	
	light_source = 5,
	
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	}
})



--**************************************************************************************

--manche : 
minetest.register_craft({
	output = 'sabrelaser:manche',
	recipe = {
		{'default:steel_ingot'},
		{'default:obsidian_shard'},
		{'default:obsidian_shard'},
		
	}
})
minetest.register_craftitem("sabrelaser:manche", {
	description = "Manche du sabre laser",
	inventory_image = "manche.png",
})


--electronique : 
minetest.register_craft({
	output = 'sabrelaser:electronique',
	recipe = {
		{'default:glass','default:torch','default:glass'},
		{'default:glass','default:mese_crystal','default:glass'},
		{'default:glass','default:steel_ingot','default:glass'},
		
	}
})
minetest.register_craftitem("sabrelaser:electronique", {
	description = "Boitier electronique du sabre laser",
	inventory_image = "electronique.png",
})

--lame vert : 
minetest.register_craft({
	output = 'sabrelaser:lamevert',
	recipe = {
		{'default:glass','default:glass','default:glass'},
		{'default:glass','dye:green','default:glass'},
		{'default:glass','dye:green','default:glass'},
		
	}
})
minetest.register_craftitem("sabrelaser:lamevert", {
	description = "Lame de couleur verte du sabre laser",
	inventory_image = "lamevert.png",
})

--lame bleu : 
minetest.register_craft({
	output = 'sabrelaser:lamebleu',
	recipe = {
		{'default:glass','default:glass','default:glass'},
		{'default:glass','dye:blue','default:glass'},
		{'default:glass','dye:blue','default:glass'},
		
	}
})
minetest.register_craftitem("sabrelaser:lamebleu", {
	description = "Lame de couleur bleu du sabre laser",
	inventory_image = "lamebleu.png",
})

--lame rouge : 
minetest.register_craft({
	output = 'sabrelaser:lamerouge',
	recipe = {
		{'default:glass','default:glass','default:glass'},
		{'default:glass','dye:red','default:glass'},
		{'default:glass','dye:red','default:glass'},
		
	}
})
minetest.register_craftitem("sabrelaser:lamerouge", {
	description = "Lame de couleur rouge du sabre laser",
	inventory_image = "lamerouge.png",
})

--son des sabres !
minetest.register_on_punchnode(function(p, node, player)

	local sabre = player:get_wielded_item():get_name()
	
	
	if  sabre == "sabrelaser:sabrelaserbleu" or sabre == "sabrelaser:sabrelaserrouge" or sabre == "sabrelaser:sabrelaservert" then
		minetest.sound_play("laser")
		
	end
	
end)

