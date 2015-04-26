--[[

Mod : sabre laser
Créé par : turbogus ( info par DARKJEDIKNIHGT )
Licence : graphisme et code GPL2 ou supérieur

Description : créez des sabre laser comme dans starwars !
              couleur des sabres : bleu, vert et rouge

]]--

--sabre rouge

minetest.register_craft({
	output = 'sabrelaser:sabrelaser_rouge',
	recipe = {
		{'sabrelaser:lame'},
		{'sabrelaser:manche_rouge'},
		
	}
})

minetest.register_tool("sabrelaser:sabrelaser_rouge", {
	description = "Sabre laser rouge",
	inventory_image = "sabrelaser_rouge.png",
	
	light_source = 10,
	
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=20},
			
	},
	on_use = function(itemstack, user, pointed_thing)
    play_sabrelaser(user) --Fonction qui envoie le son sur une surface restreinte
  end,
})

--sabre vert

minetest.register_craft({
	output = 'sabrelaser:sabrelaser_vert',
	recipe = {
		{'sabrelaser:lame'},
		{'sabrelaser:manche_vert'},
		
	}
})

minetest.register_tool("sabrelaser:sabrelaser_vert", {
	description = "Sabre laser vert",
	inventory_image = "sabrelaser_vert.png",
	
	light_source = 10,
	
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	},
	on_use = function(itemstack, user, pointed_thing)
    play_sabrelaser(user) --Fonction qui envoie le son sur une surface restreinte
  end,
})


--sabre bleu

minetest.register_craft({
	output = 'sabrelaser:sabrelaser_bleu',
	recipe = {
		{'sabrelaser:lame'},
		{'sabrelaser:manche_bleu'},
		
	}
})

minetest.register_tool("sabrelaser:sabrelaser_bleu", {
	description = "Sabre laser bleu",
	inventory_image = "sabrelaser_bleu.png",
	
	light_source = 10,
	
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	},
	on_use = function(itemstack, user, pointed_thing)
    play_sabrelaser(user) --Fonction qui envoie le son sur une surface restreinte
  end,
})
>>>>>>> Optimisation du mod

})

--*************************

--lame

minetest.register_craft({
	output = 'sabrelaser:lame',
	recipe = {
		{'default:glass','','default:glass'},
		{'default:glass','','default:glass'},
		{'default:glass','','default:glass'},
		
	}
})
minetest.register_tool("sabrelaser:lame", {
	description = "lame du sabre laser",
	inventory_image = "lame.png",	
})

--*************************

--manche assemblé base

minetest.register_craft({
	output = 'sabrelaser:manche_base',
	recipe = {
		{'sabrelaser:boutons_reglage'},
		{'sabrelaser:chambre_energie_base'},
		{'sabrelaser:bague_energie'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:manche_base',
	recipe = {
		{'sabrelaser:boutons_reglage'},
		{'sabrelaser:chambre_energie_plus_bague_energetique_base'},		
	}
})

minetest.register_tool("sabrelaser:manche_base", {
	description = "manche du sabre laser assemble sans cristal",
	inventory_image = "manche_base_2.png",	
})

--manche assemblé rouge

minetest.register_craft({
	output = 'sabrelaser:manche_rouge',
	recipe = {
		{'sabrelaser:boutons_reglage'},
		{'sabrelaser:chambre_energie_rouge'},
		{'sabrelaser:bague_energie'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:manche_rouge',
	recipe = {
		{'sabrelaser:boutons_reglage'},
		{'sabrelaser:chambre_energie_plus_bague_energetique_rouge'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:manche_rouge',
	recipe = {
		{'sabrelaser:sabrelaser_rouge'},		
	},
	replacements = {{"sabrelaser:sabrelaser_rouge", "sabrelaser:lame"}},
})


minetest.register_tool("sabrelaser:manche_rouge", {
	description = "manche du sabre laser assemble avec cristal rouge",
	inventory_image = "manche_rouge_2.png",	
})


--manche assemblé bleu

minetest.register_craft({
	output = 'sabrelaser:manche_bleu',
	recipe = {
		{'sabrelaser:boutons_reglage'},
		{'sabrelaser:chambre_energie_bleu'},
		{'sabrelaser:bague_energie'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:manche_bleu',
	recipe = {
		{'sabrelaser:boutons_reglage'},
		{'sabrelaser:chambre_energie_plus_bague_energetique_bleu'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:manche_bleu',
	recipe = {
		{'sabrelaser:sabrelaser_bleu'},		
	},
	replacements = {{"sabrelaser:sabrelaser_bleu", "sabrelaser:lame"}},
})

minetest.register_tool("sabrelaser:manche_bleu", {
	description = "manche du sabre laser assemble avec cristal bleu",
	inventory_image = "manche_bleu_2.png",	
})


--manche assemblé vert

minetest.register_craft({
	output = 'sabrelaser:manche_vert',
	recipe = {
		{'sabrelaser:boutons_reglage'},
		{'sabrelaser:chambre_energie_vert'},
		{'sabrelaser:bague_energie'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:manche_vert',
	recipe = {
		{'sabrelaser:boutons_reglage'},
		{'sabrelaser:chambre_energie_plus_bague_energetique_vert'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:manche_vert',
	recipe = {
		{'sabrelaser:sabrelaser_vert'},		
	},
	replacements = {{"sabrelaser:sabrelaser_vert", "sabrelaser:lame"}},
})

minetest.register_tool("sabrelaser:manche_vert", {
	description = "manche du sabre laser assemble avec cristal vert",
	inventory_image = "manche_vert_2.png",	
})

--*************************

--manche assemblé base sans commandes

minetest.register_craft({
	output = 'sabrelaser:chambre_energie_plus_bague_energetique_base',
	recipe = {
		{'sabrelaser:chambre_energie_base'},
		{'sabrelaser:bague_energie'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:chambre_energie_plus_bague_energetique_base',
	recipe = {
		{'sabrelaser:manche_base'},		
	},
	replacements = {{"sabrelaser:manche_base", "sabrelaser:boutons_reglage"}},
})

minetest.register_tool("sabrelaser:chambre_energie_plus_bague_energetique_base", {
	description = "manche du sabre laser assemble sans cristal et sans bouton de reglage",
	inventory_image = "chambre_energie_plus_bague_energetique_base.png",	
})


--manche assemblé rouge sans commandes

minetest.register_craft({
	output = 'sabrelaser:chambre_energie_plus_bague_energetique_rouge',
	recipe = {
		{'sabrelaser:chambre_energie_rouge'},
		{'sabrelaser:bague_energie'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:chambre_energie_plus_bague_energetique_rouge',
	recipe = {
		{'sabrelaser:manche_rouge'},		
	},
	replacements = {{"sabrelaser:manche_rouge", "sabrelaser:boutons_reglage"}},
})

minetest.register_tool("sabrelaser:chambre_energie_plus_bague_energetique_rouge", {
	description = "manche du sabre laser assemble rouge sans bouton de reglage",
	inventory_image = "chambre_energie_plus_bague_energetique_rouge.png",	
})

--manche assemblé bleu sans commandes

minetest.register_craft({
	output = 'sabrelaser:chambre_energie_plus_bague_energetique_bleu',
	recipe = {
		{'sabrelaser:chambre_energie_bleu'},
		{'sabrelaser:bague_energie'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:chambre_energie_plus_bague_energetique_bleu',
	recipe = {
		{'sabrelaser:manche_bleu'},		
	},
	replacements = {{"sabrelaser:manche_bleu", "sabrelaser:boutons_reglage"}},
})

minetest.register_tool("sabrelaser:chambre_energie_plus_bague_energetique_bleu", {
	description = "manche du sabre laser assemble bleu sans bouton de reglage",
	inventory_image = "chambre_energie_plus_bague_energetique_bleu.png",	
})

--manche assemblé vert sans commandes

minetest.register_craft({
	output = 'sabrelaser:chambre_energie_plus_bague_energetique_vert',
	recipe = {
		{'sabrelaser:chambre_energie_vert'},
		{'sabrelaser:bague_energie'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:chambre_energie_plus_bague_energetique_vert',
	recipe = {
		{'sabrelaser:manche_vert'},		
	},
	replacements = {{"sabrelaser:manche_vert", "sabrelaser:boutons_reglage"}},
})

minetest.register_tool("sabrelaser:chambre_energie_plus_bague_energetique_vert", {
	description = "manche du sabre laser assemble vert sans bouton de reglage",
	inventory_image = "chambre_energie_plus_bague_energetique_vert.png",	
})

--*************************

--bouton de réglage/commande

minetest.register_craft({
	output = 'sabrelaser:boutons_reglage',
	recipe = {
		{'default:obsidian_shard','default:steel_ingot','default:obsidian_shard'},
		{'default:obsidian_shard','default:steel_ingot','default:obsidian_shard'},
		{'default:obsidian_shard','default:obsidian_shard','default:obsidian_shard'},		
	}
})

minetest.register_tool("sabrelaser:boutons_reglage", {
	description = "Boutons de reglage et d activation du sabre laser",
	inventory_image = "boutons_reglage.png",	
})


--*************************

--chambre energie base

minetest.register_craft({
	output = 'sabrelaser:chambre_energie_base',
	recipe = {
		{'default:obsidian_shard','default:steel_ingot','default:obsidian_shard'},
		{'default:obsidian_shard','"default:diamond"','default:obsidian_shard'},
		{'default:obsidian_shard','default:obsidian_shard','default:obsidian_shard'},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:chambre_energie_base',
	recipe = {
		{'sabrelaser:chambre_energie_plus_bague_energetique_base'},		
	},
	replacements = {{"sabrelaser:chambre_energie_plus_bague_energetique_base", "sabrelaser:bague_energie"}},
})


minetest.register_tool("sabrelaser:chambre_energie_base", {
	description = "Chambre d energie sans diamant",
	inventory_image = "chambre_energie_base.png",	
})

--chambre énergie rouge

minetest.register_craft({
	output = 'sabrelaser:chambre_energie_rouge',
	recipe = {
		{'sabrelaser:cristal_rouge'},
		{"sabrelaser:chambre_energie_base"},	
	}
})
minetest.register_craft({
	output = 'sabrelaser:chambre_energie_rouge',
	recipe = {
		{'sabrelaser:chambre_energie_plus_bague_energetique_rouge'},		
	},
	replacements = {{"sabrelaser:chambre_energie_plus_bague_energetique_rouge", "sabrelaser:bague_energie"}},
})

minetest.register_tool("sabrelaser:chambre_energie_rouge", {
	description = "Chambre d energie equipee d un cristal rouge",
	inventory_image = "chambre_energie_rouge.png",	
})


--chambre énergie bleu

minetest.register_craft({
	output = 'sabrelaser:chambre_energie_bleu',
	recipe = {
		{'sabrelaser:cristal_bleu'},
		{"sabrelaser:chambre_energie_base"},	
	}
})
minetest.register_craft({
	output = 'sabrelaser:chambre_energie_bleu',
	recipe = {
		{'sabrelaser:chambre_energie_plus_bague_energetique_bleu'},		
	},
	replacements = {{"sabrelaser:chambre_energie_plus_bague_energetique_bleu", "sabrelaser:bague_energie"}},
})

minetest.register_tool("sabrelaser:chambre_energie_bleu", {
	description = "Chambre d energie equipee d un cristal bleu",
	inventory_image = "chambre_energie_bleu.png",	
})


--chambre energie verte

minetest.register_craft({
	output = 'sabrelaser:chambre_energie_vert',
	recipe = {
		{'sabrelaser:cristal_vert'},
		{"sabrelaser:chambre_energie_base"},	
	}
})
minetest.register_craft({
	output = 'sabrelaser:chambre_energie_vert',
	recipe = {
		{'sabrelaser:chambre_energie_plus_bague_energetique_vert'},		
	},
	replacements = {{"sabrelaser:chambre_energie_plus_bague_energetique_vert", "sabrelaser:bague_energie"}},
})

minetest.register_tool("sabrelaser:chambre_energie_vert", {
	description = "Chambre d energie equipee d un cristal vert",
	inventory_image = "chambre_energie_vert.png",	
})


--**************************

--cristal coloré rouge

minetest.register_craft({
	output = 'sabrelaser:cristal_rouge',
	recipe = {
		{'default:glass','default:glass','default:glass'},
		{'default:glass','dye:red','default:glass'},
		{'','default:glass',''},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:cristal_rouge',
	recipe = {
		{'sabrelaser:chambre_energie_rouge'},		
	},
	replacements = {{"sabrelaser:chambre_energie_rouge", "sabrelaser:chambre_energie_base"}},
})

minetest.register_tool("sabrelaser:cristal_rouge", {
	description = "Cristal de couleur rouge",
	inventory_image = "cristal_rouge.png",	
})



--cristal coloré bleu

minetest.register_craft({
	output = 'sabrelaser:cristal_bleu',
	recipe = {
		{'default:glass','default:glass','default:glass'},
		{'default:glass','dye:blue','default:glass'},
		{'','default:glass',''},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:cristal_bleu',
	recipe = {
		{'sabrelaser:chambre_energie_bleu'},		
	},
	replacements = {{"sabrelaser:chambre_energie_bleu", "sabrelaser:chambre_energie_base"}},
})

minetest.register_tool("sabrelaser:cristal_bleu", {
	description = "Cristal de couleur bleu",
	inventory_image = "cristal_bleu.png",	
})


--cristal coloré vert

minetest.register_craft({
	output = 'sabrelaser:cristal_vert',
	recipe = {
		{'default:glass','default:glass','default:glass'},
		{'default:glass','dye:green','default:glass'},
		{'','default:glass',''},		
	}
})
minetest.register_craft({
	output = 'sabrelaser:cristal_vert',
	recipe = {
		{'sabrelaser:chambre_energie_vert'},		
	},
	replacements = {{"sabrelaser:chambre_energie_vert", "sabrelaser:chambre_energie_base"}},
})

minetest.register_tool("sabrelaser:cristal_vert", {
	description = "Cristal de couleur vert",
	inventory_image = "cristal_vert.png",	
})

--*************************

--bague energie

minetest.register_craft({
	output = 'sabrelaser:bague_energie',
	recipe = {
		{'default:obsidian_shard','default:steel_ingot','default:obsidian_shard'},
		{'default:obsidian_shard','default:mese_crystal','default:obsidian_shard'},
		{'default:obsidian_shard','default:obsidian_shard','default:obsidian_shard'},		
	}
})

minetest.register_tool("sabrelaser:bague_energie", {
	description = "Bague fournissant l energie pour activer le sabre laser",
	inventory_image = "bague_energie.png",	
})

--*************************
--son des sabres !
function play_sabrelaser(player)
  if not player then return end --si pas de joueur.... fin
  playerpos = player:getpos()
	minetest.sound_play("laser",{
    pos = {x=playerpos.x,y=playerpos.y,z=playerpos.z}, --position du joueur
    gain = 1.0,
    max_hear_distance = 32, --joue dans un rayon de 32 blocs
  })
end












--Declaration d'item vide

--[[
minetest.register_craft({
	output = '',
	recipe = {
		{'','',''},
		{'','',''},
		{'','',''},		
	}
})

minetest.register_tool("", {
	description = "",
	inventory_image = ".png",	
})

]]--
